import SwiftUI

struct LoginView: View {
    @State private var txtMobileNumber: String = ""
    @State private var txtOtp: String = ""
    @State private var showOtpField = false
    @State private var generatedOTP: String = ""
    @State private var showInvalidMobileWarning = false
    @State private var navigateToSelectProfile = false
    @State private var showInvalidOtpWarning = false
    @State private var timer:Int = 180
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                CardView(cornerRadius: 12, elevation: 8) {
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "globe")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .padding(12)
                            }
                        }
                        
                        VStack(spacing: 16) {
                            Text("Kapas Mitra")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.bottom, 12)
                            
                            Text("Enter your mobile number")
                                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            // Mobile number field with restrictions
                            TextField("Enter mobile number", text: $txtMobileNumber)
                                .keyboardType(.numberPad)
                                .onChange(of: txtMobileNumber, initial: false) { oldValue, newValue in
                                    let filtered = newValue.filter { $0.isNumber }
                                    if filtered.count > 10 {
                                        txtMobileNumber = String(filtered.prefix(10))
                                    } else {
                                        txtMobileNumber = filtered
                                    }
                                }
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(height: 48)
                            
                            // Invalid mobile number warning
                            if showInvalidMobileWarning {
                                Text("Invalid Mobile Number")
                                    .foregroundColor(.red)
                                    .font(.caption)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            
                            if showOtpField {
                                TextField("Enter OTP", text: $txtOtp)
                                    .keyboardType(.numberPad)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(height: 48)
                            }
                            
                            // Invalid OTP warning
                            if showInvalidOtpWarning {
                                Text("Invalid OTP")
                                    .foregroundColor(.red)
                                    .font(.caption)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Button(action: {
                                if txtMobileNumber.count != 10 {
                                    withAnimation {
                                        showInvalidMobileWarning = true
                                    }
                                    return
                                }
                                
                                showInvalidMobileWarning = false
                                withAnimation {
                                    showOtpField = true
                                }
                                
                                Task {
                                    generatedOTP = generateOtp(testMode: false)
                                    if let token = await sendLoginRequest() {
                                        let smsRequest = SmsRequest(
                                            phoneNumber: txtMobileNumber,
                                            otp: generatedOTP
                                        )
                                        
                                        ApiService.shared.sendSms(token: token, smsRequest: smsRequest) { result in
                                            switch result {
                                            case .success(let smsResponse):
                                                print("Status: \(smsResponse.status)")
                                                print("Result: \(smsResponse.result)")
                                            case .failure(let error):
                                                print("Failed to send SMS: \(error.localizedDescription)")
                                            }
                                        }
                                    } else {
                                        print("Login failed")
                                    }
                                }
                                
                            }) {
                                Text("Generate OTP")
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 48)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            }
                            
                            if showOtpField {
                                Button(action: {
                                    if txtOtp == generatedOTP {
                                        showInvalidOtpWarning = false
                                        navigateToSelectProfile = true
                                    } else {
                                        showInvalidOtpWarning = true
                                    }
                                }) {
                                    Text("Verify OTP")
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 48)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                                .background(
                                    NavigationLink("", destination: SelectProfileView(),
                                                   isActive: $navigateToSelectProfile)
                                        .hidden()
                                )
                            }
                            
                            Text("We will send you a one-time password (OTP) to verify your identity")
                                .font(.system(size: 16))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.top, 8)
                            
                            Spacer()
                            
                            CardView(
                                cornerRadius: 16,
                                elevation: 6,
                                backgroundColor: Color(red: 247/255, green: 242/255, blue: 231/255)
                            ) {
                                Image("kapaskisanlogo_round")
                                    .resizable()
                                    .scaledToFit()
                            }
                            .frame(width: 100, height: 100)
                            .padding(.top, 40)
                        }
                        .padding(.horizontal, 16)
                    }
                    .padding(16)
                }
                .padding(.horizontal, 16)
                .padding(.top, 35)
                .padding(.bottom, 16)
            }
            .navigationBarHidden(true)
        }
    }
}

func sendLoginRequest() async -> String? {
    let loginRequest = LoginRequest(username: GlobalConstants.USERNAME,
                                    password: GlobalConstants.PASSWORD)
    return await withCheckedContinuation { continuation in
        ApiService.shared.login(request: loginRequest) { result in
            switch result {
            case .success(let response):
                SessionManager.shared.authToken = response.token
                continuation.resume(returning: response.token)
            case .failure(let error):
                print("Login Failed: \(error.localizedDescription)")
                continuation.resume(returning: nil)
            }
        }
    }
}

func generateOtp(testMode: Bool = false) -> String {
    if testMode {
        return "0000"
    }
    let otp = Int.random(in: 1000...9999)
    return String(otp)
}
