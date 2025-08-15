import SwiftUI

struct LoginView: View {
    @State private var mobileNumber: String = ""
    @State private var otp: String = ""
    @State private var showOtpField = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                // Main card - using existing CardView component
                CardView(cornerRadius: 12, elevation: 8) {
                    VStack {
                        // Language button at top-right
                        HStack {
                            Spacer()
                            Button(action: {
                                // Change language action
                            }) {
                                Image(systemName: "globe")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .padding(12)
                            }
                        }
                        
                        // Form content
                        VStack(spacing: 16) {
                            // App logo
                            Text("Kapas Mitra")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.bottom, 12)
                            
                            // Mobile number field
                            Text("Enter your mobile number")
                                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("Enter mobile number", text: $mobileNumber)
                                .keyboardType(.numberPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(height: 48)
                            
                            // OTP field (conditionally shown)
                            if showOtpField {
                                TextField("Enter OTP", text: $otp)
                                    .keyboardType(.numberPad)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(height: 48)
                            }
                            
                            // Action buttons
                            Button(action: {
                                // Generate OTP action
                                withAnimation {
                                    showOtpField = true
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
                                    // Verify OTP action
                                }) {
                                    Text("Verify OTP")
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 48)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                            }
                            
                            // Info text
                            Text("We will send you a one-time password (OTP) to verify your identity")
                                .font(.system(size: 16))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.top, 8)
                            
                            Spacer()
                            
                            // Bottom logo
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
            .navigationBarHidden(true).onAppear{
                print(GlobalConstants.BASE_URL)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
