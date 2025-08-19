import SwiftUI

struct SelectProfileView: View {
    @State private var selectedBarcode: String = ""
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
                            // Title section
                            VStack {
                                Text("Kapas Kisan")
                                    .font(.system(size: 28, weight: .bold))
                                    .foregroundColor(.black)
                                
                                Text("Select Your Profile")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 20)
                            }
                            
                            // Barcode selection
                            VStack(alignment: .leading) {
                                Text("Select Barcode")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 8)
                                
                                HStack {
                                    Picker("Select Barcode", selection: $selectedBarcode) {
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
                                        navigateToHome = true
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
                            }
                            
                            // Register Now card
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
                            
                            // Logout card
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
                                
                                // Hidden navigation link
                                NavigationLink(
                                    destination: LoginView(),
                                    isActive: $navigateToLogin,
                                    label: { EmptyView() }
                                )
                            }
                            
                            // Bottom logo
                            CardView(
                                cornerRadius: 16,
                                elevation: 6,
                                backgroundColor: Color(red: 247/255, green: 242/255, blue: 231/255)
                            ) {
                                Image("kapaskisanlogo_round") // Make sure to add this image to your assets
                                    .resizable()
                                    .scaledToFit()
                            }
                            .frame(width: 100, height: 100)
                            .padding(.top, 40)
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
        }.onAppear{
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
                                if(barcodesResult.count > 1){
                                    SessionManager.shared.isRegistered = true
                                    self.barcodes = barcodesResult.map { $0.barCode }
                                    if let first = self.barcodes.first {
                                        self.selectedBarcode = first
                                    }
                                }
                                else{
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
        .background(NavigationLink("",destination:HomeView(),
                                   isActive:$navigateToHome).hidden())
        .background(NavigationLink("",destination:LoginView(),
                                   isActive:$navigateToLogin).hidden())
    }
}

struct SelectProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SelectProfileView()
    }
}
