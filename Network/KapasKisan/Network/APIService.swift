import Foundation

class ApiService: NSObject {
    static let shared = ApiService()
    
    private let baseURL = GlobalConstants.BASE_URL
    private let allowInsecureCertificates = true // Set to false in production!
    
    private override init() {}
    
    private lazy var session: URLSession = {
        if allowInsecureCertificates {
            let config = URLSessionConfiguration.default
            return URLSession(configuration: config, delegate: self, delegateQueue: nil)
        } else {
            return URLSession.shared
        }
    }()
    
    // MARK: - Login API
    func login(request: LoginRequest, completion: @escaping (Result<LoginResponse, Error>) -> Void) {
        guard let url = URL(string: baseURL + "login") else {
            completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey : "Invalid URL"])))
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let jsonData = try JSONEncoder().encode(request)
            urlRequest.httpBody = jsonData
        } catch {
            completion(.failure(error))
            return
        }
        
        session.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey : "No Data Received"])))
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode(LoginResponse.self, from: data)
                completion(.success(decodedResponse))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    // MARK: Sendsms
    func sendSms(token: String, smsRequest: SmsRequest, completion: @escaping (Result<SmsResponse, Error>) -> Void) {
            
            guard let url = URL(string: baseURL + "sms") else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])))
                return
            }
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            
            // Add headers
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            do {
                let jsonData = try JSONEncoder().encode(smsRequest)
                request.httpBody = jsonData
            } catch {
                completion(.failure(error))
                return
            }
            
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                guard let data = data else {
                    completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data received"])))
                    return
                }
                
                do {
                    let smsResponse = try JSONDecoder().decode(SmsResponse.self, from: data)
                    completion(.success(smsResponse))
                } catch {
                    completion(.failure(error))
                }
            }
            
            task.resume()
        }
    
    // MARK: - Get Barcodes By Mobile Number
        func getBarcodesByMobileNumber(token: String, mobileNumber: String, completion: @escaping (Result<[BarCode], Error>) -> Void) {
            guard let url = URL(string: baseURL + "api/BarcodesByMobileNumber/\(mobileNumber)") else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey : "Invalid URL"])))
                return
            }
            
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            session.dataTask(with: request) { data, _, error in
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                guard let data = data else {
                    completion(.failure(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey : "No Data Received"])))
                    return
                }
                
                do {
                    let barcodes = try JSONDecoder().decode([BarCode].self, from: data)
                    completion(.success(barcodes))
                } catch {
                    completion(.failure(error))
                }
            }.resume()
        }
}

// MARK: - Allow Self-Signed SSL Certificates (DEV ONLY)
extension ApiService: URLSessionDelegate {
    func urlSession(_ session: URLSession,
                    didReceive challenge: URLAuthenticationChallenge,
                    completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        
        if allowInsecureCertificates,
           challenge.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust,
           let serverTrust = challenge.protectionSpace.serverTrust {
            let credential = URLCredential(trust: serverTrust)
            completionHandler(.useCredential, credential)
        } else {
            completionHandler(.performDefaultHandling, nil)
        }
    }
}
