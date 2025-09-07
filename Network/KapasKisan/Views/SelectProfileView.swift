import SwiftUI
import AppTrackingTransparency

// MARK: - SelectProfileLocalizer
class SelectProfileLocalizer {
    static func t(_ key: String) -> String {
        let lang = SessionManager.shared.selectedLanguage ?? "English"
        return translations[lang]?[key] ?? key
    }
    
    private static let translations: [String: [String: String]] = [
        // ---------------- English ----------------
        "English": [
            "select_profile": "Select Profile",
            "farmer": "Farmer",
            "ginnery": "Ginnery",
            "select_role": "Please select your role",
            "continue": "Continue",
            "no_internet": "No Internet",
            "no_internet_msg": "Please check your connection and try again.",
            "ok": "OK",
            "select_barcode": "Select BarCode",
            "register_now": "Register Now",
            "logout": "Logout"
        ],
        // ---------------- Telugu ----------------
        "Telugu": [
            "select_profile": "ప్రొఫైల్ ఎంచుకోండి",
            "farmer": "రైతు",
            "ginnery": "జిన్నరీ",
            "select_role": "దయచేసి మీ పాత్రను ఎంచుకోండి",
            "continue": "కొనసాగించు",
            "no_internet": "ఇంటర్నెట్ లేదు",
            "no_internet_msg": "దయచేసి మీ కనెక్షన్ తనిఖీ చేసి మళ్లీ ప్రయత్నించండి.",
            "ok": "సరే",
            "select_barcode": "బార్కోడ్ ఎంచుకోండి",
            "register_now": "ఇప్పుడే నమోదు చేసుకోండి",
            "logout": "లాగ్అవుట్"
        ],
        // ---------------- Hindi ----------------
        "Hindi": [
            "select_profile": "प्रोफाइल चुनें",
            "farmer": "किसान",
            "ginnery": "जिनरी",
            "select_role": "कृपया अपनी भूमिका चुनें",
            "continue": "जारी रखें",
            "no_internet": "इंटरनेट नहीं है",
            "no_internet_msg": "कृपया अपना कनेक्शन जांचें और पुनः प्रयास करें।",
            "ok": "ठीक है",
            "select_barcode": "बारकोड चुनें",
            "register_now": "अभी पंजीकरण करें",
            "logout": "लॉगआउट"
        ],
        // ---------------- Kannada ----------------
        "Kannada": [
            "select_profile": "ಪ್ರೊಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ",
            "farmer": "ರೈತ",
            "ginnery": "ಜಿನ್ನರಿ",
            "select_role": "ದಯವಿಟ್ಟು ನಿಮ್ಮ ಪಾತ್ರವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "continue": "ಮುಂದುವರಿಸಿ",
            "no_internet": "ಇಂಟರ್ನೆಟ್ ಇಲ್ಲ",
            "no_internet_msg": "ದಯವಿಟ್ಟು ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.",
            "ok": "ಸರಿ",
            "select_barcode": "ಬಾರ್ಕೋಡ್ ಆಯ್ಕೆಮಾಡಿ",
            "register_now": "ಈಗ ನೋಂದಾಯಿಸಿ",
            "logout": "ಲಾಗ್ ಔಟ್"
        ],
        // ---------------- Punjabi ----------------
        "Punjabi": [
            "select_profile": "ਪ੍ਰੋਫਾਈਲ ਚੁਣੋ",
            "farmer": "ਕਿਸਾਨ",
            "ginnery": "ਜਿਨਰੀ",
            "select_role": "ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੀ ਭੂਮਿਕਾ ਚੁਣੋ",
            "continue": "ਜਾਰੀ ਰੱਖੋ",
            "no_internet": "ਇੰਟਰਨੈੱਟ ਨਹੀਂ ਹੈ",
            "no_internet_msg": "ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੀ ਕੁਨੈਕਸ਼ਨ ਦੀ ਜਾਂਚ ਕਰੋ ਅਤੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।",
            "ok": "ਠੀਕ ਹੈ",
            "select_barcode": "ਬਾਰਕੋਡ ਚੁਣੋ",
            "register_now": "ਹੁਣੇ ਰਜਿਸਟਰ ਕਰੋ",
            "logout": "ਲਾਗਆਉਟ"
        ],
        // ---------------- Marathi ----------------
        "Marathi": [
            "select_profile": "प्रोफाइल निवडा",
            "farmer": "शेतकरी",
            "ginnery": "जिनरी",
            "select_role": "कृपया आपली भूमिका निवडा",
            "continue": "सुरू ठेवा",
            "no_internet": "इंटरनेट नाही",
            "no_internet_msg": "कृपया आपले कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.",
            "ok": "ठीक आहे",
            "select_barcode": "बारकोड निवडा",
            "register_now": "आत्ताच नोंदणी करा",
            "logout": "लॉगआउट"
        ],
        // ---------------- Gujarati ----------------
        "Gujarati": [
            "select_profile": "પ્રોફાઇલ પસંદ કરો",
            "farmer": "કિસાન",
            "ginnery": "જિનરી",
            "select_role": "કૃપા કરીને તમારી ભૂમિકા પસંદ કરો",
            "continue": "ચાલુ રાખો",
            "no_internet": "ઇન્ટરનેટ નથી",
            "no_internet_msg": "મહેરબાની કરીને તમારો કનેક્શન તપાસો અને ફરી પ્રયત્ન કરો.",
            "ok": "બરાબર",
            "select_barcode": "બારકોડ પસંદ કરો",
            "register_now": "હમણાં નોંધણી કરો",
            "logout": "લોગઆઉટ"
        ],
        // ---------------- Tamil ----------------
        "Tamil": [
            "select_profile": "சுயவிவரத்தைத் தேர்ந்தெடுக்கவும்",
            "farmer": "விவசாயி",
            "ginnery": "ஜின்னரி",
            "select_role": "தயவுசெய்து உங்கள் பங்கைத் தேர்ந்தெடுக்கவும்",
            "continue": "தொடரவும்",
            "no_internet": "இணையம் இல்லை",
            "no_internet_msg": "தயவுசெய்து உங்கள் இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.",
            "ok": "சரி",
            "select_barcode": "பார்கோடு தேர்ந்தெடுக்கவும்",
            "register_now": "இப்போது பதிவு செய்யவும்",
            "logout": "வெளியேறு"
        ],
        // ---------------- Bengali ----------------
        "Bengali": [
            "select_profile": "প্রোফাইল নির্বাচন করুন",
            "farmer": "কৃষক",
            "ginnery": "জিনারি",
            "select_role": "অনুগ্রহ করে আপনার ভূমিকা নির্বাচন করুন",
            "continue": "চালিয়ে যান",
            "no_internet": "ইন্টারনেট নেই",
            "no_internet_msg": "অনুগ্রহ করে আপনার সংযোগ পরীক্ষা করুন এবং আবার চেষ্টা করুন。",
            "ok": "ঠিক আছে",
            "select_barcode": "বারকোড নির্বাচন করুন",
            "register_now": "এখনই নিবন্ধন করুন",
            "logout": "লগআউট"
        ],
        // ---------------- Odia ----------------
        "Oriya": [
            "select_profile": "ପ୍ରୋଫାଇଲ୍ ବାଛନ୍ତୁ",
            "farmer": "କୃଷକ",
            "ginnery": "ଜିନରୀ",
            "select_role": "ଦୟାକରି ଆପଣଙ୍କର ଭୂମିକା ବାଛନ୍ତୁ",
            "continue": "ଜାରି ରଖନ୍ତୁ",
            "no_internet": "ଇଣ୍ଟରନେଟ୍ ନାହିଁ",
            "no_internet_msg": "ଦୟାକରି ଆପଣଙ୍କ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ ଏବଂ ପୁଣିଥରେ ଚେଷ୍ଟା କରନ୍ତୁ।",
            "ok": "ଠିକ୍ ଅଛି",
            "select_barcode": "ବାରକୋଡ୍ ବାଛନ୍ତୁ",
            "register_now": "ବର୍ତ୍ତମାନ ପଞ୍ଜୀକରଣ କରନ୍ତୁ",
            "logout": "ଲଗଆଉଟ୍"
        ]
    ]
}

struct SelectProfileView: View {
    @State private var selectedBarcode: String = SelectProfileLocalizer.t("select_barcode")
    @State private var showNoInternetAlert = false
    @State private var barcodes:[String] = []
    @State private var isUserLoggedIn: Bool = false
    @State private var navigateToLogin:Bool = false
    @State private var navigateToHome:Bool = false
    
    // ✅ For ATT flow
    @State private var navigateToRegistration: Bool = false
    @State private var showATTAlert: Bool = false
    
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
                            
                            // ✅ Pass ATT checker down
                            RegisterNowCard(
                                navigateToRegistration: $navigateToRegistration,
                                checkATTBeforeFeatureAccess: checkATTBeforeFeatureAccess
                            )
                            
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
                    title: Text(SelectProfileLocalizer.t("no_internet")),
                    message: Text(SelectProfileLocalizer.t("no_internet_msg")),
                    dismissButton: .default(Text(SelectProfileLocalizer.t("ok")))
                )
            }
            .alert(isPresented: $showATTAlert) {
                Alert(
                    title: Text("Permission Required"),
                    message: Text("Please allow App Tracking Transparency in Settings to proceed."),
                    primaryButton: .default(Text("Open Settings")) {
                        if let url = URL(string: UIApplication.openSettingsURLString) {
                            UIApplication.shared.open(url)
                        }
                    },
                    secondaryButton: .cancel(Text("Not Now"))
                )
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear(perform: onAppearAction)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .background(NavigationLink("", destination: HomeView(), isActive: $navigateToHome).hidden())
        .background(NavigationLink("", destination: LoginView(), isActive: $navigateToLogin).hidden())
        .background(NavigationLink("", destination: RegistrationView(), isActive: $navigateToRegistration).hidden())
        .preferredColorScheme(.light)
    }
    
    // 🔑 Shared ATT checker
    private func checkATTBeforeFeatureAccess(onAuthorized: @escaping () -> Void) {
        let status = ATTrackingManager.trackingAuthorizationStatus
        
        switch status {
        case .authorized:
            onAuthorized()
        case .notDetermined:
            ATTrackingManager.requestTrackingAuthorization { newStatus in
                DispatchQueue.main.async {
                    if newStatus == .authorized {
                        onAuthorized()
                    } else {
                        showATTAlert = true
                    }
                }
            }
        case .denied, .restricted:
            showATTAlert = true
        @unknown default:
            showATTAlert = true
        }
    }
}

// MARK: - Title Section
private struct TitleSection: View {
    var body: some View {
        VStack {
            Text("Kapas Kisan")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.black)
            
            Text(SelectProfileLocalizer.t("select_profile"))
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
    @State private var showError: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            if !barcodes.isEmpty {
                Text(SelectProfileLocalizer.t("select_profile"))
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                
                HStack {
                    Picker(SelectProfileLocalizer.t("select_barcode"), selection: $selectedBarcode) {
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
                        if selectedBarcode == SelectProfileLocalizer.t("select_barcode") {
                            showError = true
                        } else {
                            SessionManager.shared.barCode = selectedBarcode
                            navigateToHome = true
                            showError = false
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
            }
            
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
    @Binding var navigateToRegistration: Bool
    var checkATTBeforeFeatureAccess: (@escaping () -> Void) -> Void
    
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
                    //checkATTBeforeFeatureAccess {
                    navigateToRegistration = true
                    //}
                }) {
                    Text(SelectProfileLocalizer.t("register_now"))
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())
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
                    Text(SelectProfileLocalizer.t("logout"))
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
                        }
                        else {
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
