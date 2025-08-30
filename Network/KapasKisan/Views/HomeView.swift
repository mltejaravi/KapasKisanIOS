import SwiftUI

// MARK: - Home View
struct HomeView: View {
    @State private var navigateToLogin: Bool = false
    @State private var regStatus: String = ""
    @State private var regRemarks: String = ""
    
    @State private var showValidationAlert = false
    @State private var validationMessage = ""
    @State private var validationTitle = ""
    @State private var barCode: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background
                Color.blue.opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
                        // Main content card
                        CardView {
                            VStack(spacing: 16) {
                                
                                // Title
                                Text("Kapas Kisan")
                                    .font(.system(size: 25, weight: .bold))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 12)
                                
                                Text(regStatus)
                                    .font(.system(size: 16))
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 16)
                                
                                Text(regRemarks)   // bind state variable here
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 16)
                                
                                // Menu options
                                MenuCard(iconName: "person.crop.circle",
                                         buttonText: "Change Profile",
                                         buttonColor: .blue,
                                         destination: SelectProfileView()
                                    .onAppear{
                                        SessionManager.shared.barCode = nil
                                        SessionManager.shared.farmerDetails = nil
                                        SessionManager.shared.isRegistered = false
                                    },
                                         showValidationAlert: .constant(false),
                                         validationTitle: .constant(""),
                                         validationMessage: .constant(""))
                                
                                MenuCard(
                                    iconName: "person.badge.plus",
                                    buttonText: barCode.isEmpty ? "Register Now" : "Show Registered Details",
                                    buttonColor: .green,
                                    destination: RegistrationView(),
                                    showValidationAlert: .constant(false),
                                    validationTitle: .constant(""),
                                    validationMessage: .constant("")
                                )
                                
                                MenuCard(iconName: "calendar.badge.clock",
                                         buttonText: "Book a Slot",
                                         buttonColor: .blue,
                                         destination: SlotBookingView(),
                                         requiresActiveFarmer: true,
                                         showValidationAlert: $showValidationAlert,
                                         validationTitle: $validationTitle,
                                         validationMessage: $validationMessage)
                                
                                MenuCard(iconName: "plus.viewfinder",
                                         buttonText: "Add Land",
                                         buttonColor: .blue,
                                         destination: AddLandView(),
                                         requiresActiveFarmer: true,
                                         showValidationAlert: $showValidationAlert,
                                         validationTitle: $validationTitle,
                                         validationMessage: $validationMessage)
                                
                                MenuCard(iconName: "info.square",
                                         buttonText: "Slot Information",
                                         buttonColor: .blue,
                                         destination: SlotInfoView(),
                                         showValidationAlert: .constant(false),
                                         validationTitle: .constant(""),
                                         validationMessage: .constant(""))
                                
                                // Sales Info (no navigation yet)
                                CardView(cornerRadius: 12, elevation: 4) {
                                    HStack(spacing: 10) {
                                        Image(systemName: "chart.bar.doc.horizontal")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 24, height: 24)
                                            .padding(8)
                                            .background(Color.blue.opacity(0.2))
                                            .foregroundColor(.blue)
                                            .cornerRadius(8)
                                            .padding(.trailing, 8)
                                        
                                        Text("Sales Information")
                                            .font(.system(size: 18, weight: .medium))
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 48)
                                            .background(Color.blue)
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                    }
                                    .padding(16)
                                }
                                .padding(.bottom, 16)
                                
                                MenuCard(iconName: "info.circle",
                                         buttonText: "About Us",
                                         buttonColor: Color.orange,
                                         destination: AboutView(),
                                         showValidationAlert: .constant(false),
                                         validationTitle: .constant(""),
                                         validationMessage: .constant(""))
                                
                                // Logout
                                NavigationLink(
                                    destination: LoginView()
                                        .navigationBarBackButtonHidden(true),
                                    isActive: $navigateToLogin
                                ) {
                                    Button(action: {
                                        SessionManager.shared.authToken = nil
                                        SessionManager.shared.mobileNumber = nil
                                        navigateToLogin = true
                                    }) {
                                        HStack {
                                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 24, height: 24)
                                                .padding(8)
                                                .background(Color.red.opacity(0.2))
                                                .foregroundColor(.red)
                                                .cornerRadius(8)
                                                .padding(.trailing, 8)
                                            
                                            Text("Logout")
                                                .font(.system(size: 18, weight: .medium))
                                                .frame(maxWidth: .infinity)
                                                .frame(height: 48)
                                                .background(Color.red)
                                                .foregroundColor(.white)
                                                .cornerRadius(8)
                                        }
                                        .padding(16)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                                .padding(.bottom, 16)
                                
                                // Bottom Logo
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
                            .padding(16)
                        }
                        .padding(8)
                    }
                    .padding(8)
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .onAppear {
            barCode = SessionManager.shared.barCode ?? ""
            if let token = SessionManager.shared.authToken,
               let barcode = SessionManager.shared.barCode {
                if barcode != "" && barcode != "Select BarCode" {
                    ApiService.shared.getFarmerDetailsByBarcode(token: token, barCode: barcode) { result in
                        switch result {
                        case .success(let farmerDetails):
                            DispatchQueue.main.async {
                                if let first = farmerDetails.first {
                                    SessionManager.shared.farmerDetails = first
                                    regStatus = "Farmer is already registered with barcode: \(barcode)"
                                    regRemarks = first.regRemarks ?? ""
                                }
                            }
                        case .failure(let error):
                            print("⚠️ Failed to fetch farmer details: \(error)")
                        }
                    }
                } else {
                    regStatus = "Farmer is not registered"
                }
            } else {
                print("⚠️ Missing token or barcode")
            }
        }
        .preferredColorScheme(.light)
    }
}

struct MenuCard<Destination: View>: View {
    let iconName: String
    let buttonText: String
    let buttonColor: Color
    let destination: Destination
    
    // Optional parameters for active farmer check
    var requiresActiveFarmer: Bool = false
    @Binding var showValidationAlert: Bool
    @Binding var validationTitle: String
    @Binding var validationMessage: String
    
    // Internal state for navigation
    @State private var navigate: Bool = false
    
    var body: some View {
        VStack {
            NavigationLink(
                destination: destination.navigationBarBackButtonHidden(true),
                isActive: $navigate
            ) {
                EmptyView()
            }
            .hidden()
            
            Button(action: {
                if requiresActiveFarmer,
                   let farmer = SessionManager.shared.farmerDetails,
                   !(farmer.isActive ?? false) {
                    showValidationAlert = true
                    validationTitle = "User is inactive"
                    validationMessage = "Please contact the administrator."
                } else {
                    navigate = true
                }
            }) {
                HStack(spacing: 10) {
                    Image(systemName: iconName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .padding(8)
                        .background(buttonColor.opacity(0.2))
                        .foregroundColor(buttonColor)
                        .cornerRadius(8)
                        .padding(.trailing, 8)
                    
                    Text(buttonText)
                        .font(.system(size: 18, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(buttonColor)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(16)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.bottom, 16)
        .alert(isPresented: $showValidationAlert) {
            Alert(title: Text(validationTitle),
                  message: Text(validationMessage),
                  dismissButton: .default(Text("OK")))
        }
    }
}

// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
