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
    func getBarcodesByMobileNumber(token: String, mobileNumber: String,
                                   completion: @escaping (Result<[BarCode], Error>) -> Void) {
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
    
    // MARK: - Get Farmer Details By Barcode
    func getFarmerDetailsByBarcode(
        token: String,
        barCode: String,
        completion: @escaping (Result<[FarmerRegistrationResponse], Error>) -> Void
    ) {
        guard let url = URL(string: baseURL + "api/GetFarmerDetailsByBarcode/\(barCode)") else {
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
                let farmers = try JSONDecoder().decode([FarmerRegistrationResponse].self, from: data)
                completion(.success(farmers))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    
    // Generic GET helper
    private func getTitles(endpoint: String, token: String, completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let url = URL(string: baseURL + endpoint) else {
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
                let titles = try JSONDecoder().decode([Title].self, from: data)
                completion(.success(titles))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    // MARK: - API Calls
    func getSalutations(token: String, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/Salutations", token: token, completion: completion)
    }
    
    func getGenders(token: String, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/Genders", token: token, completion: completion)
    }
    
    func getCastes(token: String, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/Castes", token: token, completion: completion)
    }
    
    func getStates(token: String, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/States", token: token, completion: completion)
    }
    
    func getDistricts(token: String, stateId: Int, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/Districts/\(stateId)", token: token, completion: completion)
    }
    
    func getMandals(token: String, districtId: Int, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/Mandals/\(districtId)", token: token, completion: completion)
    }
    
    func getVillages(token: String, mandalId: Int, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/Villages/\(mandalId)", token: token, completion: completion)
    }
    
    func getDistrictMarkets(token: String, districtId: Int, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/DistrictMarkets/\(districtId)", token: token, completion: completion)
    }
    
    func getMills(token: String, marketId: Int, completion: @escaping (Result<[Title], Error>) -> Void) {
        getTitles(endpoint: "api/Mills/\(marketId)", token: token, completion: completion)
    }
    
    func getFarmerTypes(token: String, completion: @escaping (Result<[Title], Error>) -> Void){
        getTitles(endpoint: "api/FarmerTypes", token: token, completion: completion)
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
