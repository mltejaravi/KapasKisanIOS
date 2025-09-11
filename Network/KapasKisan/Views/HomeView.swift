import SwiftUI
import AppTrackingTransparency
import AdSupport

// MARK: - HomeView Localizer
class HomeViewLocalizer {
    static func t(_ key: String) -> String {
        let lang = SessionManager.shared.selectedLanguage ?? "English"
        return translations[lang]?[key] ?? key
    }
    
    private static let translations: [String: [String: String]] = [
        // ---------------- English ----------------
        "English": [
            "app_title": "Kapas Kisan",
            "change_profile": "Change Profile",
            "register_now": "Register Now",
            "show_registered_details": "Show Registered Details",
            "book_slot": "Book a Slot",
            "add_land": "Add Land",
            "slot_info": "Slot Information",
            "sales_info": "Sales Information",
            "about_us": "About Us",
            "logout": "Logout",
            
            "user_inactive_title": "User is inactive",
            "user_inactive_message": "Please contact the administrator.",
            "user_not_registered_title": "User is not registered",
            "user_not_registered_message": "Please register to continue.",
            "ok": "OK"
        ],
        // ---------------- Telugu ----------------
        "Telugu": [
            "app_title": "కపాస్ కిసాన్",
            "change_profile": "ప్రొఫైల్ మార్చండి",
            "register_now": "ఇప్పుడే నమోదు చేసుకోండి",
            "show_registered_details": "నమోదైన వివరాలను చూపించండి",
            "book_slot": "స్లాట్ బుక్ చేయండి",
            "add_land": "భూమి జోడించండి",
            "slot_info": "స్లాట్ సమాచారం",
            "sales_info": "అమ్మకాల సమాచారం",
            "about_us": "మా గురించి",
            "logout": "లాగ్ అవుట్",
            
            "user_inactive_title": "వినియోగదారు క్రియాశీలం లేరు",
            "user_inactive_message": "దయచేసి నిర్వాహకుడిని సంప్రదించండి.",
            "user_not_registered_title": "వినియోగదారు నమోదు కాలేదు",
            "user_not_registered_message": "దయచేసి కొనసాగడానికి నమోదు చేసుకోండి.",
            "ok": "సరే"
        ],
        // ---------------- Hindi ----------------
        "Hindi": [
            "app_title": "कपास किसान",
            "change_profile": "प्रोफ़ाइल बदलें",
            "register_now": "अभी पंजीकरण करें",
            "show_registered_details": "पंजीकृत विवरण दिखाएँ",
            "book_slot": "स्लॉट बुक करें",
            "add_land": "भूमि जोड़ें",
            "slot_info": "स्लॉट जानकारी",
            "sales_info": "बिक्री जानकारी",
            "about_us": "हमारे बारे में",
            "logout": "लॉगआउट",
            
            "user_inactive_title": "उपयोगकर्ता निष्क्रिय है",
            "user_inactive_message": "कृपया व्यवस्थापक से संपर्क करें।",
            "user_not_registered_title": "उपयोगकर्ता पंजीकृत नहीं है",
            "user_not_registered_message": "कृपया जारी रखने के लिए पंजीकरण करें।",
            "ok": "ठीक है"
        ],
        // ---------------- Kannada ----------------
        "Kannada": [
            "app_title": "ಕಪಾಸ್ ಕಿಸಾನ್",
            "change_profile": "ಪ್ರೊಫೈಲ್ ಬದಲಿಸಿ",
            "register_now": "ಈಗ ನೋಂದಾಯಿಸಿ",
            "show_registered_details": "ನೋಂದಾಯಿತ ವಿವರಗಳನ್ನು ತೋರಿಸಿ",
            "book_slot": "ಸ್ಲಾಟ್ ಬುಕ್ ಮಾಡಿ",
            "add_land": "ಜಮೀನು ಸೇರಿಸಿ",
            "slot_info": "ಸ್ಲಾಟ್ ಮಾಹಿತಿ",
            "sales_info": "ಮಾರಾಟ ಮಾಹಿತಿ",
            "about_us": "ನಮ್ಮ ಬಗ್ಗೆ",
            "logout": "ಲಾಗ್ ಔಟ್",
            
            "user_inactive_title": "ಬಳಕೆದಾರ ಅಕ್ರಿಯವಾಗಿದೆ",
            "user_inactive_message": "ದಯವಿಟ್ಟು ನಿರ್ವಾಹಕರನ್ನು ಸಂಪರ್ಕಿಸಿ.",
            "user_not_registered_title": "ಬಳಕೆದಾರ ನೋಂದಾಯಿಸಲಾಗಿಲ್ಲ",
            "user_not_registered_message": "ದಯವಿಟ್ಟು ಮುಂದುವರಿಸಲು ನೋಂದಾಯಿಸಿ.",
            "ok": "ಸರಿ"
        ],
        // ---------------- Tamil ----------------
        "Tamil": [
            "app_title": "கப்பாஸ் கிசான்",
            "change_profile": "சுயவிவரத்தை மாற்றவும்",
            "register_now": "இப்போது பதிவு செய்யவும்",
            "show_registered_details": "பதிவுசெய்யப்பட்ட விவரங்களை காட்டு",
            "book_slot": "ஸ்லாட் பதிவு செய்யவும்",
            "add_land": "நிலத்தைச் சேர்க்கவும்",
            "slot_info": "ஸ்லாட் தகவல்",
            "sales_info": "விற்பனை தகவல்",
            "about_us": "எங்களைப் பற்றி",
            "logout": "வெளியேறு",
            
            "user_inactive_title": "பயனர் செயலற்றார்",
            "user_inactive_message": "நிர்வாகியை தொடர்பு கொள்ளவும்.",
            "user_not_registered_title": "பயனர் பதிவு செய்யப்படவில்லை",
            "user_not_registered_message": "தொடர பதிவு செய்யவும்.",
            "ok": "சரி"
        ],
        // ---------------- Gujarati ----------------
        "Gujarati": [
            "app_title": "કપાસ કિસાન",
            "change_profile": "પ્રોફાઇલ બદલો",
            "register_now": "હમણાં નોંધણી કરો",
            "show_registered_details": "નોંધાયેલ વિગતો બતાવો",
            "book_slot": "સ્લોટ બુક કરો",
            "add_land": "જમીન ઉમેરો",
            "slot_info": "સ્લોટ માહિતી",
            "sales_info": "વેચાણ માહિતી",
            "about_us": "અમારા વિશે",
            "logout": "લૉગઆઉટ",
            
            "user_inactive_title": "વપરાશકર્તા નિષ્ક્રિય છે",
            "user_inactive_message": "કૃપા કરીને એડમિનિસ્ટ્રેટરને સંપર્ક કરો.",
            "user_not_registered_title": "વપરાશકર્તા નોંધાયેલ નથી",
            "user_not_registered_message": "કૃપા કરીને ચાલુ રાખવા માટે નોંધણી કરો.",
            "ok": "બરાબર"
        ],
        // ---------------- Punjabi ----------------
        "Punjabi": [
            "app_title": "ਕਪਾਸ ਕਿਸਾਨ",
            "change_profile": "ਪ੍ਰੋਫ਼ਾਈਲ ਬਦਲੋ",
            "register_now": "ਹੁਣੇ ਰਜਿਸਟਰ ਕਰੋ",
            "show_registered_details": "ਰਜਿਸਟਰ ਕੀਤੀਆਂ ਜਾਣਕਾਰੀਆਂ ਦਿਖਾਓ",
            "book_slot": "ਸਲਾਟ ਬੁੱਕ ਕਰੋ",
            "add_land": "ਜ਼ਮੀਨ ਸ਼ਾਮਲ ਕਰੋ",
            "slot_info": "ਸਲਾਟ ਜਾਣਕਾਰੀ",
            "sales_info": "ਵਿਕਰੀ ਜਾਣਕਾਰੀ",
            "about_us": "ਸਾਡੇ ਬਾਰੇ",
            "logout": "ਲਾਗਆਉਟ",
            
            "user_inactive_title": "ਉਪਭੋਗਤਾ ਗੈਰ-ਸਰਗਰਮ ਹੈ",
            "user_inactive_message": "ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਸ਼ਾਸਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ।",
            "user_not_registered_title": "ਉਪਭੋਗਤਾ ਰਜਿਸਟਰ ਨਹੀਂ ਹੈ",
            "user_not_registered_message": "ਜਾਰੀ ਰੱਖਣ ਲਈ ਕਿਰਪਾ ਕਰਕੇ ਰਜਿਸਟਰ ਕਰੋ।",
            "ok": "ਠੀਕ ਹੈ"
        ],
        // ---------------- Marathi ----------------
        "Marathi": [
            "app_title": "कपास किसान",
            "change_profile": "प्रोफाइल बदला",
            "register_now": "आत्ताच नोंदणी करा",
            "show_registered_details": "नोंदणीकृत तपशील दाखवा",
            "book_slot": "स्लॉट बुक करा",
            "add_land": "जमीन जोडा",
            "slot_info": "स्लॉट माहिती",
            "sales_info": "विक्री माहिती",
            "about_us": "आमच्याबद्दल",
            "logout": "लॉगआउट",
            
            "user_inactive_title": "वापरकर्ता निष्क्रिय आहे",
            "user_inactive_message": "कृपया प्रशासकाशी संपर्क साधा.",
            "user_not_registered_title": "वापरकर्ता नोंदणीकृत नाही",
            "user_not_registered_message": "कृपया पुढे जाण्यासाठी नोंदणी करा.",
            "ok": "ठीक आहे"
        ],
        // ---------------- Bengali ----------------
        "Bengali": [
            "app_title": "কাপাস কিসান",
            "change_profile": "প্রোফাইল পরিবর্তন করুন",
            "register_now": "এখনই নিবন্ধন করুন",
            "show_registered_details": "নিবন্ধিত বিবরণ দেখান",
            "book_slot": "স্লট বুক করুন",
            "add_land": "জমি যোগ করুন",
            "slot_info": "স্লট তথ্য",
            "sales_info": "বিক্রয় তথ্য",
            "about_us": "আমাদের সম্পর্কে",
            "logout": "লগআউট",
            
            "user_inactive_title": "ব্যবহারকারী নিষ্ক্রিয়",
            "user_inactive_message": "অনুগ্রহ করে প্রশাসকের সাথে যোগাযোগ করুন।",
            "user_not_registered_title": "ব্যবহারকারী নিবন্ধিত নয়",
            "user_not_registered_message": "চালিয়ে যেতে অনুগ্রহ করে নিবন্ধন করুন।",
            "ok": "ঠিক আছে"
        ],
        // ---------------- Odia ----------------
        "Oriya": [
            "app_title": "କପାସ କିସାନ୍",
            "change_profile": "ପ୍ରୋଫାଇଲ୍ ପରିବର୍ତ୍ତନ କରନ୍ତୁ",
            "register_now": "ବର୍ତ୍ତମାନ ପଞ୍ଜୀକରଣ କରନ୍ତୁ",
            "show_registered_details": "ପଞ୍ଜୀକୃତ ବିବରଣୀ ଦେଖାନ୍ତୁ",
            "book_slot": "ସ୍ଲଟ୍ ବୁକ୍ କରନ୍ତୁ",
            "add_land": "ଜମି ଯୋଡନ୍ତୁ",
            "slot_info": "ସ୍ଲଟ୍ ସୂଚନା",
            "sales_info": "ବିକ୍ରୟ ସୂଚନା",
            "about_us": "ଆମ ବିଷୟରେ",
            "logout": "ଲଗଆଉଟ୍",
            
            "user_inactive_title": "ବ୍ୟବହାରକାରୀ ନିଷ୍କ୍ରିୟ",
            "user_inactive_message": "ଦୟାକରି ପ୍ରଶାସକଙ୍କ ସହିତ ସମ୍ପର୍କ କରନ୍ତୁ।",
            "user_not_registered_title": "ବ୍ୟବହାରକାରୀ ପଞ୍ଜୀକୃତ ନୁହେଁ",
            "user_not_registered_message": "ଜାରି ରଖିବା ପାଇଁ ଦୟାକରି ପଞ୍ଜୀକରଣ କରନ୍ତୁ।",
            "ok": "ଠିକ୍ ଅଛି"
        ]
    ]
}

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
                                Text(HomeViewLocalizer.t("app_title"))
                                    .font(.system(size: 25, weight: .bold))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 12)
                                
                                Text(regStatus)
                                    .font(.system(size: 16))
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 10)
                                
                                if let farmer = SessionManager.shared.farmerDetails, !(farmer.isActive ?? false) {
                                    Text("Farmer is not approved")
                                } else if let farmer = SessionManager.shared.farmerDetails, farmer.isActive ?? false {
                                    Text("Farmer is approved")
                                }
                                
                                Text(regRemarks)
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 16)
                                
                                // Change Profile
                                MenuCard(iconName: "person.crop.circle",
                                         buttonText: HomeViewLocalizer.t("change_profile"),
                                         buttonColor: .blue) {
                                    SessionManager.shared.barCode = nil
                                    SessionManager.shared.farmerDetails = nil
                                    SessionManager.shared.isRegistered = false
                                    navigateToSelectProfile = true
                                }
                                
                                // Register Now
                                MenuCard(iconName: "person.badge.plus",
                                         buttonText: barCode.isEmpty ? HomeViewLocalizer.t("register_now") : HomeViewLocalizer.t("show_registered_details"),
                                         buttonColor: .green) {
                                    checkATTBeforeFeatureAccess {
                                        navigateToRegistration = true
                                    }
                                }
                                
                                // Book Slot
                                MenuCard(iconName: "calendar.badge.clock",
                                         buttonText: HomeViewLocalizer.t("book_slot"),
                                         buttonColor: .blue) {
                                    
                                    let barcode = SessionManager.shared.barCode ?? ""
                                    if let farmer = SessionManager.shared.farmerDetails,
                                       !(farmer.isActive ?? false) {
                                        validationTitle = HomeViewLocalizer.t("user_inactive_title")
                                        validationMessage = HomeViewLocalizer.t("user_inactive_message")
                                        showValidationAlert = true
                                    } else if (barcode.isEmpty || barcode == "Select BarCode"
                                    || barcode == "") {
                                        validationTitle = HomeViewLocalizer.t("user_not_registered_title")
                                        validationMessage = HomeViewLocalizer.t("user_not_registered_message")
                                        showValidationAlert = true
                                    } else {
                                        navigateToSlotBooking = true
                                    }
                                }
                                
                                // Add Land
                                MenuCard(iconName: "plus.viewfinder",
                                         buttonText: HomeViewLocalizer.t("add_land"),
                                         buttonColor: .blue) {
                                    let barcode = SessionManager.shared.barCode ?? ""
                                    
                                    if let farmer = SessionManager.shared.farmerDetails,
                                       !(farmer.isActive ?? false) {
                                        validationTitle = HomeViewLocalizer.t("user_inactive_title")
                                        validationMessage = HomeViewLocalizer.t("user_inactive_message")
                                        showValidationAlert = true
                                    } else if (barcode.isEmpty || barcode == "Select BarCode"
                                               || barcode == ""){
                                        validationTitle = HomeViewLocalizer.t("user_not_registered_title")
                                        validationMessage = HomeViewLocalizer.t("user_not_registered_message")
                                        showValidationAlert = true
                                    } else {
                                        navigateToAddLand = true
                                    }
                                }
                                
                                // Slot Info
                                MenuCard(iconName: "info.square",
                                         buttonText: HomeViewLocalizer.t("slot_info"),
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
                                        
                                        Text(HomeViewLocalizer.t("sales_info"))
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
                                         buttonText: HomeViewLocalizer.t("about_us"),
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
                                        
                                        Text(HomeViewLocalizer.t("logout"))
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
                  dismissButton: .default(Text(HomeViewLocalizer.t("ok"))))
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


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
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
