import SwiftUI
import AppTrackingTransparency
import AdSupport

// MARK: - Home View
struct HomeView: View {
    @State private var navigateToLogin: Bool = false
    @State private var navigateToRegistration: Bool = false
    @State private var navigateToSelectProfile: Bool = false
    @State private var navigateToSlotBooking: Bool = false
    @State private var navigateToAddLand: Bool = false
    @State private var navigateToSlotInfo: Bool = false
    @State private var navigateToAbout: Bool = false
    
    @State private var regStatus: String = ""
    @State private var regRemarks: String = ""
    
    @State private var showValidationAlert = false
    @State private var validationMessage = ""
    @State private var validationTitle = ""
    @State private var barCode: String = ""
    
    // ATT handling
    @State private var showSettingsReminder = false
    @State private var settingsReminderMessage = ""
    @State private var hasShownReminderThisSession = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
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
                                
                                Text(regRemarks)
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 16)
                                
                                // Change Profile
                                MenuCard(iconName: "person.crop.circle",
                                         buttonText: "Change Profile",
                                         buttonColor: .blue) {
                                    SessionManager.shared.barCode = nil
                                    SessionManager.shared.farmerDetails = nil
                                    SessionManager.shared.isRegistered = false
                                    navigateToSelectProfile = true
                                }
                                
                                // Register Now
                                MenuCard(iconName: "person.badge.plus",
                                         buttonText: barCode.isEmpty ? "Register Now" : "Show Registered Details",
                                         buttonColor: .green) {
                                    checkATTBeforeFeatureAccess {
                                        navigateToRegistration = true
                                    }
                                }
                                
                                // Book Slot
                                MenuCard(iconName: "calendar.badge.clock",
                                         buttonText: "Book a Slot",
                                         buttonColor: .blue) {
                                    if let farmer = SessionManager.shared.farmerDetails,
                                       !(farmer.isActive ?? false) {
                                        validationTitle = "User is inactive"
                                        validationMessage = "Please contact the administrator."
                                        showValidationAlert = true
                                    } else {
                                        navigateToSlotBooking = true
                                    }
                                }
                                
                                // Add Land
                                MenuCard(iconName: "plus.viewfinder",
                                         buttonText: "Add Land",
                                         buttonColor: .blue) {
                                    if let farmer = SessionManager.shared.farmerDetails,
                                       !(farmer.isActive ?? false) {
                                        validationTitle = "User is inactive"
                                        validationMessage = "Please contact the administrator."
                                        showValidationAlert = true
                                    } else {
                                        navigateToAddLand = true
                                    }
                                }
                                
                                // Slot Info
                                MenuCard(iconName: "info.square",
                                         buttonText: "Slot Information",
                                         buttonColor: .blue) {
                                    navigateToSlotInfo = true
                                }
                                
                                // Sales Info
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
                                
                                // About
                                MenuCard(iconName: "info.circle",
                                         buttonText: "About Us",
                                         buttonColor: .orange) {
                                    navigateToAbout = true
                                }
                                
                                // Logout
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
                                .padding(.bottom, 16)
                                
                                // Bottom Logo
                                CardView(cornerRadius: 16,
                                         elevation: 6,
                                         backgroundColor: Color(red: 247/255, green: 242/255, blue: 231/255)) {
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
                
                // ✅ Hidden NavigationLinks
                Group {
                    NavigationLink("", destination: LoginView(), isActive: $navigateToLogin).hidden()
                    NavigationLink("", destination: RegistrationView(), isActive: $navigateToRegistration).hidden()
                    NavigationLink("", destination: SelectProfileView(), isActive: $navigateToSelectProfile).hidden()
                    NavigationLink("", destination: SlotBookingView(), isActive: $navigateToSlotBooking).hidden()
                    NavigationLink("", destination: AddLandView(), isActive: $navigateToAddLand).hidden()
                    NavigationLink("", destination: SlotInfoView(), isActive: $navigateToSlotInfo).hidden()
                    NavigationLink("", destination: AboutView(), isActive: $navigateToAbout).hidden()
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
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
            }
        }
        .alert(isPresented: $showValidationAlert) {
            Alert(title: Text(validationTitle),
                  message: Text(validationMessage),
                  dismissButton: .default(Text("OK")))
        }
        .preferredColorScheme(.light)
    }
    
    private func showReminderOnce(_ message: String) {
        if !hasShownReminderThisSession {
            settingsReminderMessage = message
            showSettingsReminder = true
            hasShownReminderThisSession = true
        }
    }
    
    private func checkATTBeforeFeatureAccess(onGranted: @escaping () -> Void) {
        let status = ATTrackingManager.trackingAuthorizationStatus
        
        switch status {
        case .authorized:
            onGranted()
        case .notDetermined:
            ATTrackingManager.requestTrackingAuthorization { newStatus in
                DispatchQueue.main.async {
                    if newStatus == .authorized {
                        onGranted()
                    } else {
                        showReminderOnce("You must allow tracking to use this feature. Please enable it in Settings.")
                    }
                }
            }
        case .denied, .restricted:
            showReminderOnce("You must allow tracking to use this feature. Go to Settings > Privacy > Tracking and enable it.")
        @unknown default:
            showReminderOnce("You must allow tracking to use this feature.")
        }
    }
}

// MARK: - MenuCard
struct MenuCard: View {
    let iconName: String
    let buttonText: String
    let buttonColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
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
        .padding(.bottom, 16)
    }
}
