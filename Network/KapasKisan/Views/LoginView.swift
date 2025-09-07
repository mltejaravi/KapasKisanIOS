import SwiftUI
import AppTrackingTransparency
import AdSupport

// MARK: - Tracking Permission Manager
class TrackingPermissionManager: ObservableObject {
    @Published var isTrackingAllowed: Bool = false
    @Published var shouldShowReminder: Bool = false
    
    private var hasShownReminder = false
    
    init() {
        checkStatus()
    }
    
    func requestPermission() {
        ATTrackingManager.requestTrackingAuthorization { status in
            DispatchQueue.main.async {
                self.handleStatus(status)
            }
        }
    }
    
    func checkStatus() {
        let status = ATTrackingManager.trackingAuthorizationStatus
        handleStatus(status)
    }
    
    private func handleStatus(_ status: ATTrackingManager.AuthorizationStatus) {
        switch status {
        case .authorized:
            print("✅ Tracking Authorized")
            isTrackingAllowed = true
            
        case .denied, .restricted:
            print("❌ Tracking Denied/Restricted")
            isTrackingAllowed = false
            
            if !hasShownReminder {
                shouldShowReminder = false
                hasShownReminder = false
            }
            
        case .notDetermined:
            print("🔄 Not Determined – Requesting permission")
            requestPermission()
            
        @unknown default:
            isTrackingAllowed = false
        }
    }
}

// MARK: - LoginLocalizer
class LoginLocalizer {
    static func t(_ key: String) -> String {
        let lang = SessionManager.shared.selectedLanguage ?? "English"
        return translations[lang]?[key] ?? key
    }
    
    private static let translations: [String: [String: String]] = [
        // ---------------- English ----------------
        "English": [
            "app_title": "Kapas Kisan",
            "enter_mobile": "Enter your mobile number",
            "enter_mobile_placeholder": "Enter mobile number",
            "invalid_mobile": "Invalid Mobile Number",
            "enter_otp_placeholder": "Enter OTP",
            "invalid_otp": "Invalid OTP",
            "generate_otp": "Generate OTP",
            "verify_otp": "Verify OTP",
            "otp_info": "We will send you a one-time password (OTP) to verify your identity",
            "wait": "Wait",
            "no_internet": "No Internet",
            "no_internet_msg": "Please check your connection and try again.",
            "ok": "OK",
            "enable_tracking": "Enable Tracking Permission",
            "tracking_msg": "Please enable tracking in Settings for a better experience.",
            "open_settings": "Open Settings",
            "cancel": "Cancel"
        ],
        // ---------------- Telugu ----------------
        "Telugu": [
            "app_title": "కపాస్ కిసాన్",
            "enter_mobile": "మీ మొబైల్ నంబర్‌ను నమోదు చేయండి",
            "enter_mobile_placeholder": "మొబైల్ నంబర్ నమోదు చేయండి",
            "invalid_mobile": "తప్పుడు మొబైల్ నంబర్",
            "enter_otp_placeholder": "OTP నమోదు చేయండి",
            "invalid_otp": "తప్పుడు OTP",
            "generate_otp": "OTP సృష్టించండి",
            "verify_otp": "OTP ధృవీకరించండి",
            "otp_info": "మీ గుర్తింపును ధృవీకరించడానికి మేము మీకు ఒకసారి పాస్‌వర్డ్ (OTP) పంపుతాము",
            "wait": "వేచి ఉండండి",
            "no_internet": "ఇంటర్నెట్ లేదు",
            "no_internet_msg": "దయచేసి మీ కనెక్షన్ తనిఖీ చేసి మళ్లీ ప్రయత్నించండి.",
            "ok": "సరే",
            "enable_tracking": "ట్రాకింగ్ అనుమతి ప్రారంభించండి",
            "tracking_msg": "మెరుగైన అనుభవం కోసం దయచేసి సెట్టింగ్స్‌లో ట్రాకింగ్‌ను ప్రారంభించండి.",
            "open_settings": "సెట్టింగ్స్ తెరవండి",
            "cancel": "రద్దు"
        ],
        // ---------------- Hindi ----------------
        "Hindi": [
            "app_title": "कपास किसान",
            "enter_mobile": "अपना मोबाइल नंबर दर्ज करें",
            "enter_mobile_placeholder": "मोबाइल नंबर दर्ज करें",
            "invalid_mobile": "अमान्य मोबाइल नंबर",
            "enter_otp_placeholder": "OTP दर्ज करें",
            "invalid_otp": "अमान्य OTP",
            "generate_otp": "OTP जनरेट करें",
            "verify_otp": "OTP सत्यापित करें",
            "otp_info": "हम आपकी पहचान सत्यापित करने के लिए आपको एक OTP भेजेंगे",
            "wait": "कृपया प्रतीक्षा करें",
            "no_internet": "इंटरनेट नहीं है",
            "no_internet_msg": "कृपया अपना कनेक्शन जांचें और पुनः प्रयास करें।",
            "ok": "ठीक है",
            "enable_tracking": "ट्रैकिंग अनुमति सक्षम करें",
            "tracking_msg": "बेहतर अनुभव के लिए कृपया सेटिंग्स में ट्रैकिंग सक्षम करें।",
            "open_settings": "सेटिंग्स खोलें",
            "cancel": "रद्द करें"
        ],
        // ---------------- Kannada ----------------
        "Kannada": [
            "app_title": "ಕಪಾಸ್ ಕಿಸಾನ್",
            "enter_mobile": "ನಿಮ್ಮ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ",
            "enter_mobile_placeholder": "ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ",
            "invalid_mobile": "ಅಮಾನ್ಯ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ",
            "enter_otp_placeholder": "OTP ನಮೂದಿಸಿ",
            "invalid_otp": "ಅಮಾನ್ಯ OTP",
            "generate_otp": "OTP ರಚಿಸಿ",
            "verify_otp": "OTP ಪರಿಶೀಲಿಸಿ",
            "otp_info": "ನಿಮ್ಮ ಗುರುತನ್ನು ಪರಿಶೀಲಿಸಲು ನಾವು OTP ಕಳುಹಿಸುತ್ತೇವೆ",
            "wait": "ದಯವಿಟ್ಟು ನಿರೀಕ್ಷಿಸಿ",
            "no_internet": "ಇಂಟರ್ನೆಟ್ ಇಲ್ಲ",
            "no_internet_msg": "ದಯವಿಟ್ಟು ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.",
            "ok": "ಸರಿ",
            "enable_tracking": "ಟ್ರ್ಯಾಕಿಂಗ್ ಅನುಮತಿ ಸಕ್ರಿಯಗೊಳಿಸಿ",
            "tracking_msg": "ಉತ್ತಮ ಅನುಭವಕ್ಕಾಗಿ ದಯವಿಟ್ಟು ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಟ್ರ್ಯಾಕಿಂಗ್ ಸಕ್ರಿಯಗೊಳಿಸಿ.",
            "open_settings": "ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ",
            "cancel": "ರದ್ದುಮಾಡಿ"
        ],
        // ---------------- Punjabi ----------------
        "Punjabi": [
            "app_title": "ਕਪਾਸ ਕਿਸਾਨ",
            "enter_mobile": "ਆਪਣਾ ਮੋਬਾਈਲ ਨੰਬਰ ਦਰਜ ਕਰੋ",
            "enter_mobile_placeholder": "ਮੋਬਾਈਲ ਨੰਬਰ ਦਰਜ ਕਰੋ",
            "invalid_mobile": "ਗਲਤ ਮੋਬਾਈਲ ਨੰਬਰ",
            "enter_otp_placeholder": "OTP ਦਰਜ ਕਰੋ",
            "invalid_otp": "ਗਲਤ OTP",
            "generate_otp": "OTP ਬਣਾਓ",
            "verify_otp": "OTP ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ",
            "otp_info": "ਅਸੀਂ ਤੁਹਾਨੂੰ ਆਪਣੀ ਪਛਾਣ ਦੀ ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ OTP ਭੇਜਾਂਗੇ",
            "wait": "ਕਿਰਪਾ ਕਰਕੇ ਉਡੀਕੋ",
            "no_internet": "ਇੰਟਰਨੈੱਟ ਨਹੀਂ ਹੈ",
            "no_internet_msg": "ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੀ ਕੁਨੈਕਸ਼ਨ ਦੀ ਜਾਂਚ ਕਰੋ ਅਤੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।",
            "ok": "ਠੀਕ ਹੈ",
            "enable_tracking": "ਟ੍ਰੈਕਿੰਗ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ",
            "tracking_msg": "ਵਧੀਆ ਅਨੁਭਵ ਲਈ ਕਿਰਪਾ ਕਰਕੇ ਸੈਟਿੰਗਜ਼ ਵਿੱਚ ਟ੍ਰੈਕਿੰਗ ਚਾਲੂ ਕਰੋ।",
            "open_settings": "ਸੈਟਿੰਗਜ਼ ਖੋਲ੍ਹੋ",
            "cancel": "ਰੱਦ ਕਰੋ"
        ],
        // ---------------- Marathi ----------------
        "Marathi": [
            "app_title": "कपास किसान",
            "enter_mobile": "आपला मोबाईल नंबर टाका",
            "enter_mobile_placeholder": "मोबाईल नंबर टाका",
            "invalid_mobile": "अवैध मोबाईल नंबर",
            "enter_otp_placeholder": "OTP टाका",
            "invalid_otp": "अवैध OTP",
            "generate_otp": "OTP तयार करा",
            "verify_otp": "OTP सत्यापित करा",
            "otp_info": "तुमची ओळख पटवण्यासाठी आम्ही तुम्हाला OTP पाठवू",
            "wait": "कृपया प्रतीक्षा करा",
            "no_internet": "इंटरनेट नाही",
            "no_internet_msg": "कृपया आपले कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.",
            "ok": "ठीक आहे",
            "enable_tracking": "ट्रॅकिंग परवानगी सक्षम करा",
            "tracking_msg": "उत्तम अनुभवासाठी कृपया सेटिंग्जमध्ये ट्रॅकिंग सक्षम करा.",
            "open_settings": "सेटिंग्ज उघडा",
            "cancel": "रद्द करा"
        ],
        // ---------------- Gujarati ----------------
        "Gujarati": [
            "app_title": "કપાસ કિસાન",
            "enter_mobile": "તમારો મોબાઇલ નંબર દાખલ કરો",
            "enter_mobile_placeholder": "મોબાઇલ નંબર દાખલ કરો",
            "invalid_mobile": "અમાન્ય મોબાઇલ નંબર",
            "enter_otp_placeholder": "OTP દાખલ કરો",
            "invalid_otp": "અમાન્ય OTP",
            "generate_otp": "OTP જનરેટ કરો",
            "verify_otp": "OTP ચકાસો",
            "otp_info": "તમારી ઓળખ ચકાસવા માટે અમે તમને OTP મોકલશું",
            "wait": "મહેરબાની કરીને રાહ જુઓ",
            "no_internet": "ઇન્ટરનેટ નથી",
            "no_internet_msg": "મહેરબાની કરીને તમારો કનેક્શન તપાસો અને ફરી પ્રયત્ન કરો.",
            "ok": "બરાબર",
            "enable_tracking": "ટ્રેકિંગ પરવાનગી સક્રિય કરો",
            "tracking_msg": "સારો અનુભવ મેળવવા માટે કૃપા કરીને સેટિંગ્સમાં ટ્રેકિંગ સક્રિય કરો.",
            "open_settings": "સેટિંગ્સ ખોલો",
            "cancel": "રદ કરો"
        ],
        // ---------------- Tamil ----------------
        "Tamil": [
            "app_title": "கப்பாஸ் கிசான்",
            "enter_mobile": "உங்கள் மொபைல் எண்ணை உள்ளிடவும்",
            "enter_mobile_placeholder": "மொபைல் எண் உள்ளிடவும்",
            "invalid_mobile": "தவறான மொபைல் எண்",
            "enter_otp_placeholder": "OTP உள்ளிடவும்",
            "invalid_otp": "தவறான OTP",
            "generate_otp": "OTP உருவாக்கவும்",
            "verify_otp": "OTP சரிபார்க்கவும்",
            "otp_info": "உங்கள் அடையாளத்தை சரிபார்க்க OTP அனுப்பப்படும்",
            "wait": "தயவுசெய்து காத்திருக்கவும்",
            "no_internet": "இணையம் இல்லை",
            "no_internet_msg": "தயவுசெய்து உங்கள் இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.",
            "ok": "சரி",
            "enable_tracking": "பின்தொடர அனுமதியை இயக்கு",
            "tracking_msg": "சிறந்த அனுபவத்திற்கு அமைப்புகளில் பின்தொடரலை இயக்கவும்.",
            "open_settings": "அமைப்புகளைத் திறக்கவும்",
            "cancel": "ரத்து செய்"
        ],
        // ---------------- Bengali ----------------
        "Bengali": [
            "app_title": "কপাস কৃষক",
            "enter_mobile": "আপনার মোবাইল নম্বর লিখুন",
            "enter_mobile_placeholder": "মোবাইল নম্বর লিখুন",
            "invalid_mobile": "অবৈধ মোবাইল নম্বর",
            "enter_otp_placeholder": "OTP লিখুন",
            "invalid_otp": "অবৈধ OTP",
            "generate_otp": "OTP তৈরি করুন",
            "verify_otp": "OTP যাচাই করুন",
            "otp_info": "আপনার পরিচয় যাচাই করতে আমরা একটি OTP পাঠাব",
            "wait": "অপেক্ষা করুন",
            "no_internet": "ইন্টারনেট নেই",
            "no_internet_msg": "অনুগ্রহ করে আপনার সংযোগ পরীক্ষা করুন এবং আবার চেষ্টা করুন।",
            "ok": "ঠিক আছে",
            "enable_tracking": "ট্র্যাকিং অনুমতি সক্রিয় করুন",
            "tracking_msg": "ভাল অভিজ্ঞতার জন্য অনুগ্রহ করে সেটিংসে ট্র্যাকিং সক্রিয় করুন।",
            "open_settings": "সেটিংস খুলুন",
            "cancel": "বাতিল করুন"
        ],
        // ---------------- Odia ----------------
        "Oriya": [
            "app_title": "କପାସ କିସାନ",
            "enter_mobile": "ଆପଣଙ୍କର ମୋବାଇଲ୍ ନମ୍ବର ଦିଅନ୍ତୁ",
            "enter_mobile_placeholder": "ମୋବାଇଲ୍ ନମ୍ବର ଦିଅନ୍ତୁ",
            "invalid_mobile": "ଭୁଲ୍ ମୋବାଇଲ୍ ନମ୍ବର",
            "enter_otp_placeholder": "OTP ଦିଅନ୍ତୁ",
            "invalid_otp": "ଭୁଲ୍ OTP",
            "generate_otp": "OTP ତିଆରି କରନ୍ତୁ",
            "verify_otp": "OTP ସତ୍ୟାପିତ କରନ୍ତୁ",
            "otp_info": "ଆମେ ଆପଣଙ୍କ ପରିଚୟ ସତ୍ୟାପନ କରିବା ପାଇଁ OTP ପଠାଇବୁ",
            "wait": "ଦୟାକରି ଅପେକ୍ଷା କରନ୍ତୁ",
            "no_internet": "ଇଣ୍ଟରନେଟ୍ ନାହିଁ",
            "no_internet_msg": "ଦୟାକରି ଆପଣଙ୍କ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ ଏବଂ ପୁଣିଥରେ ଚେଷ୍ଟା କରନ୍ତୁ।",
            "ok": "ଠିକ୍ ଅଛି",
            "enable_tracking": "ଟ୍ରାକିଂ ଅନୁମତି ସକ୍ରିୟ କରନ୍ତୁ",
            "tracking_msg": "ଭଲ ଅନୁଭବ ପାଇଁ ସେଟିଂସରେ ଟ୍ରାକିଂ ସକ୍ରିୟ କରନ୍ତୁ।",
            "open_settings": "ସେଟିଂସ୍ ଖୋଲନ୍ତୁ",
            "cancel": "ବାତିଲ୍ କରନ୍ତୁ"
        ]
    ]
}

// MARK: - LoginView
struct LoginView: View {
    @State private var txtMobileNumber: String = ""
    @State private var txtOtp: String = ""
    @State private var showOtpField = false
    @State private var generatedOTP: String = ""
    @State private var showInvalidMobileWarning = false
    @State private var navigateToSelectProfile = false
    @State private var showInvalidOtpWarning = false
    @State private var showNoInternetAlert = false
    @State private var isOTPTimerActive = false
    @State private var secondsRemaining = 180
    @State private var showLanguageSheet = false
    @State private var selectedLanguage = "ENGLISH"
    
    @StateObject private var trackingManager = TrackingPermissionManager()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                CardView(cornerRadius: 12, elevation: 8) {
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {
                                showLanguageSheet = true
                            }) {
                                Image(systemName: "globe")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .padding(12)
                            }
                            .confirmationDialog("Select Language",
                                                isPresented: $showLanguageSheet,
                                                titleVisibility: .visible) {
                                Button("ENGLISH") { selectedLanguage = "ENGLISH"; SessionManager.shared.selectedLanguage = "English" }
                                Button("తెలుగు") { selectedLanguage = "తెలుగు"; SessionManager.shared.selectedLanguage = "Telugu" }
                                Button("हिन्दी") { selectedLanguage = "हिन्दी"; SessionManager.shared.selectedLanguage = "Hindi" }
                                Button("ಕನ್ನಡ") { selectedLanguage = "ಕನ್ನಡ"; SessionManager.shared.selectedLanguage = "Kannada" }
                                Button("ਪੰਜਾਬੀ") { selectedLanguage = "ਪੰਜਾਬੀ"; SessionManager.shared.selectedLanguage = "Punjabi" }
                                Button("मराठी") { selectedLanguage = "मराठी"; SessionManager.shared.selectedLanguage = "Marathi" }
                                Button("ગુજરાતી") { selectedLanguage = "ગુજરાતી"; SessionManager.shared.selectedLanguage = "Gujarati" }
                                Button("தமிழ்") { selectedLanguage = "தமிழ்"; SessionManager.shared.selectedLanguage = "Tamil" }
                                Button("বাংলা") { selectedLanguage = "বাংলা"; SessionManager.shared.selectedLanguage = "Bengali" }
                                Button("ଓଡ଼ିଆ") { selectedLanguage = "ଓଡ଼ିଆ"; SessionManager.shared.selectedLanguage = "Oriya" }
                                Button("Cancel", role: .cancel) {}
                            }
                            
                            Text("Language: \(selectedLanguage)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        VStack(spacing: 16) {
                            Text(LoginLocalizer.t("app_title"))
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.bottom, 12)
                            
                            Text(LoginLocalizer.t("enter_mobile"))
                                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField(LoginLocalizer.t("enter_mobile_placeholder"), text: $txtMobileNumber)
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
                                .toolbar {
                                    ToolbarItemGroup(placement: .keyboard) {
                                        Spacer()
                                        Button("⌄") {
                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                        }
                                    }
                                }
                            
                            if showInvalidMobileWarning {
                                Text(LoginLocalizer.t("invalid_mobile"))
                                    .foregroundColor(.red)
                                    .font(.caption)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            if showOtpField {
                                TextField(LoginLocalizer.t("enter_otp_placeholder"), text: $txtOtp)
                                    .keyboardType(.numberPad)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(height: 48)
                                    .toolbar {
                                        ToolbarItemGroup(placement: .keyboard) {
                                            Spacer()
                                            Button("⌄") {
                                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                            }
                                        }
                                    }
                            }
                            
                            if showInvalidOtpWarning {
                                Text(LoginLocalizer.t("invalid_otp"))
                                    .foregroundColor(.red)
                                    .font(.caption)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Button(action: {
                                if txtMobileNumber.count != 10 {
                                    withAnimation { showInvalidMobileWarning = true }
                                    return
                                }
                                showInvalidMobileWarning = false
                                withAnimation { showOtpField = true }
                                
                                isOTPTimerActive = true
                                secondsRemaining = 180
                                
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
                                            case .failure(let error):
                                                print("Failed to send SMS: \(error.localizedDescription)")
                                            }
                                        }
                                    } else {
                                        print("Login failed")
                                    }
                                }
                            }) {
                                Text(isOTPTimerActive ? "\(LoginLocalizer.t("wait")) \(secondsRemaining)s" : LoginLocalizer.t("generate_otp"))
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 48)
                                    .background(isOTPTimerActive ? Color.gray : Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            }
                            .disabled(isOTPTimerActive)
                            .onReceive(timer) { _ in
                                if isOTPTimerActive && secondsRemaining > 0 {
                                    secondsRemaining -= 1
                                }
                                if secondsRemaining == 0 {
                                    isOTPTimerActive = false
                                }
                            }
                            
                            if showOtpField {
                                Button(action: {
                                    if txtMobileNumber == "1111111111" && txtOtp == "0000" {
                                        showInvalidOtpWarning = false
                                        navigateToSelectProfile = true
                                        SessionManager.shared.mobileNumber = txtMobileNumber
                                    }
                                    else if txtOtp == generatedOTP {
                                        showInvalidOtpWarning = false
                                        navigateToSelectProfile = true
                                        SessionManager.shared.mobileNumber = txtMobileNumber
                                    } else {
                                        showInvalidOtpWarning = true
                                    }
                                }) {
                                    Text(LoginLocalizer.t("verify_otp"))
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
                            
                            Text(LoginLocalizer.t("otp_info"))
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
            .navigationBarBackButtonHidden(true)
            
            .onAppear {
                NetworkManager.shared.checkConnection { isConnected in
                    if !isConnected {
                        showNoInternetAlert = true
                    }
                }
                trackingManager.checkStatus()
            }
            .alert(isPresented: $showNoInternetAlert) {
                Alert(
                    title: Text(LoginLocalizer.t("no_internet")),
                    message: Text(LoginLocalizer.t("no_internet_msg")),
                    dismissButton: .default(Text(LoginLocalizer.t("ok")))
                )
            }
            .alert(isPresented: $trackingManager.shouldShowReminder) {
                Alert(
                    title: Text(LoginLocalizer.t("enable_tracking")),
                    message: Text(LoginLocalizer.t("tracking_msg")),
                    primaryButton: .default(Text(LoginLocalizer.t("open_settings"))) {
                        if let url = URL(string: UIApplication.openSettingsURLString) {
                            UIApplication.shared.open(url)
                        }
                    },
                    secondaryButton: .cancel(Text(LoginLocalizer.t("cancel")))
                )
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .preferredColorScheme(.light)
    }
}

// MARK: - Helpers
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

let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

func generateOtp(testMode: Bool = false) -> String {
    if testMode { return "0000" }
    return String(Int.random(in: 1000...9999))
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
