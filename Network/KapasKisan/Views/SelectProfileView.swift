import SwiftUI

struct SelectProfileView: View {
    @State private var selectedBarcode: String = "Select BarCode"
    @State private var showNoInternetAlert = false
    @State private var barcodes:[String] = []
    @State private var isUserLoggedIn: Bool = false
    @State private var navigateToLogin:Bool = false
    @State private var navigateToHome:Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    // Main content card
                    CardView(cornerRadius: 16, elevation: 8) {
                        VStack(spacing: 16) {
                            TitleSection()
                            BarcodeSelection(
                                selectedBarcode: $selectedBarcode,
                                barcodes: $barcodes,
                                navigateToHome: $navigateToHome
                            )
                            RegisterNowCard()
                            LogoutCard(navigateToLogin: $navigateToLogin)
                            BottomLogo()
                        }
                        .padding(20)
                    }
                    .padding(8)
                }
                .padding(16)
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .alert(isPresented: $showNoInternetAlert) {
                Alert(
                    title: Text("No Internet"),
                    message: Text("Please check your connection and try again."),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
        .onAppear(perform: onAppearAction)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .background(NavigationLink("", destination: HomeView(), isActive: $navigateToHome).hidden())
        .background(NavigationLink("", destination: LoginView(), isActive: $navigateToLogin).hidden())
    }
}

// MARK: - Title Section
private struct TitleSection: View {
    var body: some View {
        VStack {
            Text("Kapas Kisan")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.black)
            
            Text("Select Your Profile")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.black)
                .padding(.bottom, 20)
        }
    }
}

// MARK: - Barcode Selection
private struct BarcodeSelection: View {
    @Binding var selectedBarcode: String
    @Binding var barcodes: [String]
    @Binding var navigateToHome: Bool
    @State private var showError: Bool = false   // ✅ to control error label
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Select BarCode")
                .font(.system(size: 14))
                .foregroundColor(.black)
            
            HStack {
                Picker("Select BarCode", selection: $selectedBarcode) {
                    ForEach(barcodes, id: \.self) { barcode in
                        Text(barcode).tag(barcode)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                
                Button(action: {
                    if selectedBarcode == "Select BarCode" {
                        showError = true   // ✅ show error label
                    } else {
                        SessionManager.shared.barCode = selectedBarcode
                        navigateToHome = true
                        showError = false   // ✅ hide error if valid
                    }
                }) {
                    Image(systemName: "arrow.forward")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding(12)
                        .foregroundColor(.white)
                        .background(Color.teal)
                        .cornerRadius(24)
                }
                .frame(width: 48, height: 48)
            }
            
            // ✅ Error shown only after button tap & invalid selection
            if showError {
                Text("⚠️ Please select a barcode")
                    .font(.system(size: 12))
                    .foregroundColor(.red)
                    .padding(.top, 2)
            }
        }
    }
}

// MARK: - Register Now Card
private struct RegisterNowCard: View {
    var body: some View {
        CardView(cornerRadius: 12, elevation: 4) {
            HStack {
                Image(systemName: "person.badge.plus")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(12)
                    .padding(.trailing, 12)
                
                Button(action: {
                    // Register now action
                }) {
                    Text("Register Now")
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                }
                .buttonStyle(PlainButtonStyle())
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .padding(16)
        }
    }
}

// MARK: - Logout Card
private struct LogoutCard: View {
    @Binding var navigateToLogin: Bool
    
    var body: some View {
        CardView(cornerRadius: 12, elevation: 4) {
            HStack {
                Image(systemName: "arrow.left.square")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(12)
                    .padding(.trailing, 12)
                
                Button(action: {
                    SessionManager.shared.authToken = nil
                    SessionManager.shared.mobileNumber = nil
                    navigateToLogin = true
                }) {
                    Text("Logout")
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(16)
            
            NavigationLink(
                destination: LoginView(),
                isActive: $navigateToLogin,
                label: { EmptyView() }
            )
        }
    }
}

// MARK: - Bottom Logo
private struct BottomLogo: View {
    var body: some View {
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
}

// MARK: - onAppear
extension SelectProfileView {
    private func onAppearAction() {
        NetworkManager.shared.checkConnection { isConnected in
            if !isConnected {
                showNoInternetAlert = true
            }
        }
        
        if !SessionManager.shared.checkSession() {
            navigateToLogin = true
        }
        
        if let token = SessionManager.shared.authToken,
           let mobileNumber = SessionManager.shared.mobileNumber {
            ApiService.shared.getBarcodesByMobileNumber(token: token, mobileNumber: mobileNumber) { result in
                switch result {
                case .success(let barcodesResult):
                    DispatchQueue.main.async {
                        if barcodesResult.count > 1 {
                            SessionManager.shared.isRegistered = true
                            self.barcodes = barcodesResult.map { $0.barCode }
                        } else if let onlyBarcode = barcodesResult.first?.barCode {
                            SessionManager.shared.isRegistered = true
                            self.selectedBarcode = onlyBarcode
                            SessionManager.shared.barCode = onlyBarcode
                            self.navigateToHome = true
                        } else {
                            SessionManager.shared.isRegistered = false
                            self.navigateToHome = true
                        }
                    }
                case .failure(let error):
                    print("Failed to fetch barcodes: \(error)")
                }
            }
        }
    }
}

struct SelectProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SelectProfileView()
    }
}
