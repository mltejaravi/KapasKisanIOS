import SwiftUI

// MARK: - Slot booking localizer
class SlotBookingLocalizer {
    static func t(_ key: String) -> String {
        let lang = SessionManager.shared.selectedLanguage ?? "English"
        return translations[lang]?[key] ?? translations["English"]?[key] ?? key
    }

    private static let translations: [String: [String: String]] = [
        // ---------------- English ----------------
        "English": [
            "book_your_slot": "Book Your Slot",
            "select_state": "Select State",
            "select_district": "Select District",
            "select_market": "Select Market",
            "select_mill": "Select Mill",
            "farmer_left_qty": "Farmer Left Over Quantity:",
            "approx_weight": "Approx Weight (Quintals)",
            "mill_capacity": "Mill Processing Capacity",
            "available_slots": "Available Slots",
            "available": "Available",
            "used": "Used",
            "select_date": "Select Date",
            "select_date_msg": "Please select a date from the calendar above",
            "confirm_slot": "Confirm Selected Slot",
            "validation_error": "Validation Error",
            "booking_success": "Booking Successful",
            "booking_success_msg": "Your booking has been created successfully.",
            "ok": "OK",
            "valid_state": "Please select a valid State.",
            "valid_district": "Please select a valid District.",
            "valid_market": "Please select a valid Market.",
            "valid_mill": "Please select a valid Mill.",
            "enter_approx_qty": "Please enter Approximate Quantity.",
            "qty_exceed": "Approx Quantity cannot exceed Expected Yield.",
            "select_slot": "Please select at least one slot."
        ],

        // ---------------- Telugu ----------------
        "Telugu": [
            "book_your_slot": "మీ స్లాట్ బుక్ చేయండి",
            "select_state": "రాష్ట్రాన్ని ఎంచుకోండి",
            "select_district": "జిల్లాను ఎంచుకోండి",
            "select_market": "మార్కెట్‌ను ఎంచుకోండి",
            "select_mill": "మిల్‌ను ఎంచుకోండి",
            "farmer_left_qty": "రైతు మిగిలిన పరిమాణం:",
            "approx_weight": "సుమారు బరువు (క్వింటాల్స్)",
            "mill_capacity": "మిల్ ప్రాసెసింగ్ సామర్థ్యం",
            "available_slots": "లభ్యమయ్యే స్లాట్లు",
            "available": "లభ్యం",
            "used": "వాడినవి",
            "select_date": "తేదీని ఎంచుకోండి",
            "select_date_msg": "దయచేసి పైన ఉన్న క్యాలెండర్ నుండి తేదీని ఎంచుకోండి",
            "confirm_slot": "ఎంచుకున్న స్లాట్‌ను నిర్ధారించండి",
            "validation_error": "ధృవీకరణ లోపం",
            "booking_success": "బుకింగ్ విజయవంతమైంది",
            "booking_success_msg": "మీ బుకింగ్ విజయవంతంగా సృష్టించబడింది.",
            "ok": "సరే",
            "valid_state": "దయచేసి చెల్లుబాటు అయ్యే రాష్ట్రాన్ని ఎంచుకోండి.",
            "valid_district": "దయచేసి చెల్లుబాటు అయ్యే జిల్లాను ఎంచుకోండి.",
            "valid_market": "దయచేసి చెల్లుబాటు అయ్యే మార్కెట్‌ను ఎంచుకోండి.",
            "valid_mill": "దయచేసి చెల్లుబాటు అయ్యే మిల్‌ను ఎంచుకోండి.",
            "enter_approx_qty": "దయచేసి సుమారు పరిమాణాన్ని నమోదు చేయండి.",
            "qty_exceed": "సుమారు పరిమాణం అంచనా దిగుబడిని మించకూడదు.",
            "select_slot": "దయచేసి కనీసం ఒక స్లాట్‌ను ఎంచుకోండి."
        ],

        // ---------------- Hindi ----------------
        "Hindi": [
            "book_your_slot": "अपना स्लॉट बुक करें",
            "select_state": "राज्य चुनें",
            "select_district": "जिला चुनें",
            "select_market": "मार्केट चुनें",
            "select_mill": "मिल चुनें",
            "farmer_left_qty": "किसान शेष मात्रा:",
            "approx_weight": "लगभग वजन (क्विंटल)",
            "mill_capacity": "मिल प्रोसेसिंग क्षमता",
            "available_slots": "उपलब्ध स्लॉट्स",
            "available": "उपलब्ध",
            "used": "प्रयुक्त",
            "select_date": "तारीख चुनें",
            "select_date_msg": "कृपया ऊपर दिए गए कैलेंडर से एक तारीख चुनें",
            "confirm_slot": "चयनित स्लॉट की पुष्टि करें",
            "validation_error": "मान्यकरण त्रुटि",
            "booking_success": "बुकिंग सफल",
            "booking_success_msg": "आपकी बुकिंग सफलतापूर्वक बनाई गई है।",
            "ok": "ठीक है",
            "valid_state": "कृपया मान्य राज्य चुनें।",
            "valid_district": "कृपया मान्य जिला चुनें।",
            "valid_market": "कृपया मान्य मार्केट चुनें।",
            "valid_mill": "कृपया मान्य मिल चुनें।",
            "enter_approx_qty": "कृपया अनुमानित मात्रा दर्ज करें।",
            "qty_exceed": "अनुमानित मात्रा अपेक्षित उपज से अधिक नहीं हो सकती।",
            "select_slot": "कृपया कम से कम एक स्लॉट चुनें।"
        ],

        // ---------------- Kannada ----------------
        "Kannada": [
            "book_your_slot": "ನಿಮ್ಮ ಸ್ಲಾಟ್ ಬುಕ್ ಮಾಡಿ",
            "select_state": "ರಾಜ್ಯವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_district": "ಜಿಲ್ಲೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_market": "ಮಾರ್ಕೆಟ್ ಆಯ್ಕೆಮಾಡಿ",
            "select_mill": "ಮಿಲ್ ಆಯ್ಕೆಮಾಡಿ",
            "farmer_left_qty": "ರೈತನ ಉಳಿದ ಪ್ರಮಾಣ:",
            "approx_weight": "ಅಂದಾಜು ತೂಕ (ಕ್ವಿಂಟಲ್)",
            "mill_capacity": "ಮಿಲ್ ಪ್ರೊಸೆಸಿಂಗ್ ಸಾಮರ್ಥ್ಯ",
            "available_slots": "ಲಭ್ಯವಿರುವ ಸ್ಲಾಟ್ಗಳು",
            "available": "ಲಭ್ಯವಿದೆ",
            "used": "ಬಳಸಲಾಗಿದೆ",
            "select_date": "ದಿನಾಂಕವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_date_msg": "ದಯವಿಟ್ಟು ಮೇಲಿನ ಕ್ಯಾಲೆಂಡರ್‌ನಿಂದ ದಿನಾಂಕವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "confirm_slot": "ಆಯ್ಕೆ ಮಾಡಿದ ಸ್ಲಾಟ್ ಅನ್ನು ದೃಢೀಕರಿಸಿ",
            "validation_error": "ಮೌಲ್ಯಮಾಪನ ದೋಷ",
            "booking_success": "ಬುಕಿಂಗ್ ಯಶಸ್ವಿಯಾಗಿದೆ",
            "booking_success_msg": "ನಿಮ್ಮ ಬುಕಿಂಗ್ ಯಶಸ್ವಿಯಾಗಿ ರಚಿಸಲಾಗಿದೆ.",
            "ok": "ಸರಿ",
            "valid_state": "ದಯವಿಟ್ಟು ಮಾನ್ಯ ರಾಜ್ಯವನ್ನು ಆಯ್ಕೆಮಾಡಿ.",
            "valid_district": "ದಯವಿಟ್ಟು ಮಾನ್ಯ ಜಿಲ್ಲೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.",
            "valid_market": "ದಯವಿಟ್ಟು ಮಾನ್ಯ ಮಾರ್ಕೆಟ್ ಆಯ್ಕೆಮಾಡಿ.",
            "valid_mill": "ದಯವಿಟ್ಟು ಮಾನ್ಯ ಮಿಲ್ ಆಯ್ಕೆಮಾಡಿ.",
            "enter_approx_qty": "ದಯವಿಟ್ಟು ಅಂದಾಜು ಪ್ರಮಾಣವನ್ನು ನಮೂದಿಸಿ.",
            "qty_exceed": "ಅಂದಾಜು ಪ್ರಮಾಣ ನಿರೀಕ್ಷಿತ ಉತ್ಪಾದನೆಯನ್ನು ಮೀರಬಾರದು.",
            "select_slot": "ದಯವಿಟ್ಟು ಕನಿಷ್ಠ ಒಂದು ಸ್ಲಾಟ್ ಅನ್ನು ಆಯ್ಕೆಮಾಡಿ."
        ],

        // ---------------- Tamil ----------------
        "Tamil": [
            "book_your_slot": "உங்கள் இடத்தை பதிவு செய்யவும்",
            "select_state": "மாநிலத்தை தேர்ந்தெடுக்கவும்",
            "select_district": "மாவட்டத்தை தேர்ந்தெடுக்கவும்",
            "select_market": "சந்தையை தேர்ந்தெடுக்கவும்",
            "select_mill": "ஆலை தேர்ந்தெடுக்கவும்",
            "farmer_left_qty": "விவசாயியின் மீதமுள்ள அளவு:",
            "approx_weight": "சுமார் எடை (குவிண்டல்)",
            "mill_capacity": "ஆலை செயலாக்க திறன்",
            "available_slots": "கிடைக்கும் இடங்கள்",
            "available": "கிடைக்கும்",
            "used": "பயன்படுத்தப்பட்டது",
            "select_date": "தேதியை தேர்ந்தெடுக்கவும்",
            "select_date_msg": "மேலுள்ள காலெண்டரில் இருந்து ஒரு தேதியைத் தேர்ந்தெடுக்கவும்",
            "confirm_slot": "தேர்ந்தெடுத்த இடத்தை உறுதிப்படுத்தவும்",
            "validation_error": "சரிபார்ப்பு பிழை",
            "booking_success": "பதிவு வெற்றிகரமாக முடிந்தது",
            "booking_success_msg": "உங்கள் பதிவு வெற்றிகரமாக உருவாக்கப்பட்டது.",
            "ok": "சரி",
            "valid_state": "தயவுசெய்து செல்லுபடியாகும் மாநிலத்தைத் தேர்ந்தெடுக்கவும்.",
            "valid_district": "தயவுசெய்து செல்லுபடியாகும் மாவட்டத்தைத் தேர்ந்தெடுக்கவும்.",
            "valid_market": "தயவுசெய்து செல்லுபடியாகும் சந்தையைத் தேர்ந்தெடுக்கவும்.",
            "valid_mill": "தயவுசெய்து செல்லுபடியாகும் ஆலை தேர்ந்தெடுக்கவும்.",
            "enter_approx_qty": "தயவுசெய்து சுமார் அளவை உள்ளிடவும்.",
            "qty_exceed": "சுமார் அளவு எதிர்பார்க்கப்படும் மகசூலை விட அதிகமாக இருக்கக்கூடாது.",
            "select_slot": "குறைந்தது ஒரு இடத்தைத் தேர்ந்தெடுக்கவும்."
        ],

        // ---------------- Bengali ----------------
        "Bengali": [
            "book_your_slot": "আপনার স্লট বুক করুন",
            "select_state": "রাজ্য নির্বাচন করুন",
            "select_district": "জেলা নির্বাচন করুন",
            "select_market": "বাজার নির্বাচন করুন",
            "select_mill": "কল নির্বাচন করুন",
            "farmer_left_qty": "চাষীর অবশিষ্ট পরিমাণ:",
            "approx_weight": "প্রায় ওজন (কুইন্টাল)",
            "mill_capacity": "কল প্রক্রিয়াকরণ ক্ষমতা",
            "available_slots": "উপলব্ধ স্লট",
            "available": "উপলব্ধ",
            "used": "ব্যবহৃত",
            "select_date": "তারিখ নির্বাচন করুন",
            "select_date_msg": "উপরের ক্যালেন্ডার থেকে একটি তারিখ নির্বাচন করুন",
            "confirm_slot": "নির্বাচিত স্লট নিশ্চিত করুন",
            "validation_error": "যাচাইকরণ ত্রুটি",
            "booking_success": "বুকিং সফল",
            "booking_success_msg": "আপনার বুকিং সফলভাবে তৈরি হয়েছে।",
            "ok": "ঠিক আছে",
            "valid_state": "একটি বৈধ রাজ্য নির্বাচন করুন।",
            "valid_district": "একটি বৈধ জেলা নির্বাচন করুন।",
            "valid_market": "একটি বৈধ বাজার নির্বাচন করুন।",
            "valid_mill": "একটি বৈধ কল নির্বাচন করুন।",
            "enter_approx_qty": "প্রায় পরিমাণ লিখুন।",
            "qty_exceed": "প্রায় পরিমাণ প্রত্যাশিত ফলনের চেয়ে বেশি হতে পারবে না।",
            "select_slot": "অন্তত একটি স্লট নির্বাচন করুন।"
        ],

        // ---------------- Gujarati ----------------
        "Gujarati": [
            "book_your_slot": "તમારો સ્લોટ બુક કરો",
            "select_state": "રાજ્ય પસંદ કરો",
            "select_district": "જિલ્લો પસંદ કરો",
            "select_market": "બજાર પસંદ કરો",
            "select_mill": "મિલ પસંદ કરો",
            "farmer_left_qty": "ખેડૂત બાકી જથ્થો:",
            "approx_weight": "અંદાજિત વજન (ક્વિન્ટલ)",
            "mill_capacity": "મિલ પ્રક્રિયા ક્ષમતા",
            "available_slots": "ઉપલબ્ધ સ્લોટ્સ",
            "available": "ઉપલબ્ધ",
            "used": "ઉપયોગમાં લેવાયું",
            "select_date": "તારીખ પસંદ કરો",
            "select_date_msg": "ઉપરોક્ત કેલેન્ડરમાંથી તારીખ પસંદ કરો",
            "confirm_slot": "પસંદ કરેલો સ્લોટ કન્ફર્મ કરો",
            "validation_error": "વેલિડેશન ભૂલ",
            "booking_success": "બુકિંગ સફળ",
            "booking_success_msg": "તમારું બુકિંગ સફળતાપૂર્વક બનાવવામાં આવ્યું છે.",
            "ok": "બરાબર",
            "valid_state": "કૃપા કરીને માન્ય રાજ્ય પસંદ કરો.",
            "valid_district": "કૃપા કરીને માન્ય જિલ્લો પસંદ કરો.",
            "valid_market": "કૃપા કરીને માન્ય બજાર પસંદ કરો.",
            "valid_mill": "કૃપા કરીને માન્ય મિલ પસંદ કરો.",
            "enter_approx_qty": "કૃપા કરીને અંદાજિત જથ્થો દાખલ કરો.",
            "qty_exceed": "અંદાજિત જથ્થો અપેક્ષિત ઉત્પાદન કરતાં વધુ ન હોવો જોઈએ.",
            "select_slot": "કૃપા કરીને ઓછામાં ઓછો એક સ્લોટ પસંદ કરો."
        ],

        // ---------------- Punjabi ----------------
        "Punjabi": [
            "book_your_slot": "ਆਪਣਾ ਸਲਾਟ ਬੁੱਕ ਕਰੋ",
            "select_state": "ਰਾਜ ਚੁਣੋ",
            "select_district": "ਜ਼ਿਲ੍ਹਾ ਚੁਣੋ",
            "select_market": "ਮਾਰਕੀਟ ਚੁਣੋ",
            "select_mill": "ਮਿੱਲ ਚੁਣੋ",
            "farmer_left_qty": "ਕਿਸਾਨ ਬਚਿਆ ਹੋਇਆ ਮਾਤਰਾ:",
            "approx_weight": "ਲਗਭਗ ਵਜ਼ਨ (ਕੁਇੰਟਲ)",
            "mill_capacity": "ਮਿੱਲ ਪ੍ਰੋਸੈਸਿੰਗ ਸਮਰੱਥਾ",
            "available_slots": "ਉਪਲਬਧ ਸਲਾਟਸ",
            "available": "ਉਪਲਬਧ",
            "used": "ਵਰਤਿਆ",
            "select_date": "ਮਿਤੀ ਚੁਣੋ",
            "select_date_msg": "ਉੱਪਰ ਦਿੱਤੇ ਕੈਲੰਡਰ ਤੋਂ ਮਿਤੀ ਚੁਣੋ",
            "confirm_slot": "ਚੁਣਿਆ ਸਲਾਟ ਪੁਸ਼ਟੀ ਕਰੋ",
            "validation_error": "ਵੈਲੀਡੇਸ਼ਨ ਗਲਤੀ",
            "booking_success": "ਬੁਕਿੰਗ ਸਫਲ",
            "booking_success_msg": "ਤੁਹਾਡੀ ਬੁਕਿੰਗ ਸਫਲਤਾਪੂਰਵਕ ਬਣਾਈ ਗਈ ਹੈ।",
            "ok": "ਠੀਕ ਹੈ",
            "valid_state": "ਕਿਰਪਾ ਕਰਕੇ ਵੈਧ ਰਾਜ ਚੁਣੋ।",
            "valid_district": "ਕਿਰਪਾ ਕਰਕੇ ਵੈਧ ਜ਼ਿਲ੍ਹਾ ਚੁਣੋ।",
            "valid_market": "ਕਿਰਪਾ ਕਰਕੇ ਵੈਧ ਮਾਰਕੀਟ ਚੁਣੋ।",
            "valid_mill": "ਕਿਰਪਾ ਕਰਕੇ ਵੈਧ ਮਿੱਲ ਚੁਣੋ।",
            "enter_approx_qty": "ਕਿਰਪਾ ਕਰਕੇ ਲਗਭਗ ਮਾਤਰਾ ਦਰਜ ਕਰੋ।",
            "qty_exceed": "ਲਗਭਗ ਮਾਤਰਾ ਉਮੀਦ ਕੀਤੀ ਪੈਦਾਵਾਰ ਤੋਂ ਵੱਧ ਨਹੀਂ ਹੋ ਸਕਦੀ।",
            "select_slot": "ਕਿਰਪਾ ਕਰਕੇ ਘੱਟੋ-ਘੱਟ ਇੱਕ ਸਲਾਟ ਚੁਣੋ।"
        ],

        // ---------------- Marathi ----------------
        "Marathi": [
            "book_your_slot": "आपला स्लॉट बुक करा",
            "select_state": "राज्य निवडा",
            "select_district": "जिल्हा निवडा",
            "select_market": "बाजार निवडा",
            "select_mill": "मिल निवडा",
            "farmer_left_qty": "शेतकऱ्याचे उरलेले प्रमाण:",
            "approx_weight": "अंदाजे वजन (क्विंटल)",
            "mill_capacity": "मिल प्रक्रिया क्षमता",
            "available_slots": "उपलब्ध स्लॉट्स",
            "available": "उपलब्ध",
            "used": "वापरले",
            "select_date": "तारीख निवडा",
            "select_date_msg": "कृपया वरील कॅलेंडरमधून तारीख निवडा",
            "confirm_slot": "निवडलेला स्लॉट कन्फर्म करा",
            "validation_error": "वैधता त्रुटी",
            "booking_success": "बुकिंग यशस्वी",
            "booking_success_msg": "आपले बुकिंग यशस्वीरित्या तयार केले आहे.",
            "ok": "ठीक आहे",
            "valid_state": "कृपया वैध राज्य निवडा.",
            "valid_district": "कृपया वैध जिल्हा निवडा.",
            "valid_market": "कृपया वैध बाजार निवडा.",
            "valid_mill": "कृपया वैध मिल निवडा.",
            "enter_approx_qty": "कृपया अंदाजे प्रमाण प्रविष्ट करा.",
            "qty_exceed": "अंदाजे प्रमाण अपेक्षित उत्पादनापेक्षा जास्त नसावे.",
            "select_slot": "कृपया किमान एक स्लॉट निवडा."
        ],

        // ---------------- Odia ----------------
        "Odia": [
            "book_your_slot": "ଆପଣଙ୍କର ସ୍ଲଟ ବୁକ୍ କରନ୍ତୁ",
            "select_state": "ରାଜ୍ୟ ଚୟନ କରନ୍ତୁ",
            "select_district": "ଜିଲ୍ଲା ଚୟନ କରନ୍ତୁ",
            "select_market": "ବଜାର ଚୟନ କରନ୍ତୁ",
            "select_mill": "ମିଲ୍ ଚୟନ କରନ୍ତୁ",
            "farmer_left_qty": "ଚାଷୀଙ୍କ ଅବଶିଷ୍ଟ ପରିମାଣ:",
            "approx_weight": "ଆନୁମାନିକ ଓଜନ (କ୍ୱିଣ୍ଟାଲ୍)",
            "mill_capacity": "ମିଲ୍ ପ୍ରୋସେସିଂ କ୍ଷମତା",
            "available_slots": "ଉପଲବ୍ଧ ସ୍ଲଟ୍",
            "available": "ଉପଲବ୍ଧ",
            "used": "ବ୍ୟବହୃତ",
            "select_date": "ତାରିଖ ଚୟନ କରନ୍ତୁ",
            "select_date_msg": "ଦୟାକରି ଉପରୋକ୍ତ କ୍ୟାଲେଣ୍ଡରରୁ ଗୋଟିଏ ତାରିଖ ଚୟନ କରନ୍ତୁ",
            "confirm_slot": "ଚୟନିତ ସ୍ଲଟ୍ କନଫର୍ମ କରନ୍ତୁ",
            "validation_error": "ଭାଲିଡେସନ ତ୍ରୁଟି",
            "booking_success": "ବୁକିଂ ସଫଳ",
            "booking_success_msg": "ଆପଣଙ୍କ ବୁକିଂ ସଫଳତାର ସହିତ ସୃଷ୍ଟି ହୋଇଛି।",
            "ok": "ଠିକ୍ ଅଛି",
            "valid_state": "ଦୟାକରି ଏକ ବ validଧ ରାଜ୍ୟ ଚୟନ କରନ୍ତୁ।",
            "valid_district": "ଦୟାକରି ଏକ ବ validଧ ଜିଲ୍ଲା ଚୟନ କରନ୍ତୁ।",
            "valid_market": "ଦୟାକରି ଏକ ବ validଧ ବଜାର ଚୟନ କରନ୍ତୁ।",
            "valid_mill": "ଦୟାକରି ଏକ ବ validଧ ମିଲ୍ ଚୟନ କରନ୍ତୁ।",
            "enter_approx_qty": "ଦୟାକରି ଆନୁମାନିକ ପରିମାଣ ପ୍ରବେଶ କରନ୍ତୁ।",
            "qty_exceed": "ଆନୁମାନିକ ପରିମାଣ ଆଶାକରା ଉତ୍ପାଦନକୁ ଅତିକ୍ରମ କରିପାରିବନି।",
            "select_slot": "ଦୟାକରି କମ୍ ସେ କମ୍ ଗୋଟିଏ ସ୍ଲଟ୍ ଚୟନ କରନ୍ତୁ।"
        ]
    ]
}

// MARK: - Slot booking view
struct SlotBookingView: View {
    @State private var approxWeight: String = ""
    @State private var selectedDate = Date()
    @State private var showAvailableSlots = false
    
    @State private var states:[Title] = []
    @State private var selectedState: Title?
    
    @State private var districts:[Title] = []
    @State private var selectedDistrict: Title?
    
    @State private var markets:[Title] = []
    @State private var selectedMarket: Title?
    
    @State private var mills: [Title] = []
    @State private var selectedMill: Title?
    
    @State private var expectedYeild: String = ""
    
    @State private var slots: [Slot] = []
    @State private var selectedSlot: Slot? = nil
    @State private var MillCapacity: String = ""
    @State private var showValidationAlert = false
    @State private var validationMessage = ""
    @State private var validationTitle = ""
    
    @State private var showToast = false
    @State private var toastMessage = ""
    
    @State private var isSubmitting = false
    
    // Sample data
    let availableSlots = ["9:00 AM", "11:00 AM", "2:00 PM", "4:00 PM"]
    @State private var gotoHome:Bool = false
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    // Status bar border
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 2)
                        .edgesIgnoringSafeArea(.top)
                    
                    // Header with back button and title
                    HStack {
                        Button(action: {
                            gotoHome = true
                        }) {
                            Image(systemName: "arrow.backward")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                                .frame(width: 60, height: 60)
                                .contentShape(Rectangle())
                        }
                        .padding(.leading, 12)
                        
                        Text(SlotBookingLocalizer.t("book_your_slot"))
                            .font(.system(size: 28, weight: .bold))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 8)
                    
                    // Scrollable form
                    ScrollView {
                        VStack(spacing: 16) {
                            // Form container
                            VStack(spacing: 16) {
                                // State selection
                                Text(SlotBookingLocalizer.t("select_state"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker(SlotBookingLocalizer.t("select_state"), selection: $selectedState) {
                                    ForEach(states, id: \.self) { title in
                                        Text(title.name)
                                            .tag(Optional(title))
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
                                .onChange(of: selectedState) { newValue in
                                    markets = []

                                    if let state = newValue {
                                        if state.id != 0 {
                                            loadDistricts()
                                        } else {
                                            districts = []
                                        }
                                    } else {
                                        districts = []
                                    }
                                }
                                
                                // District selection
                                Text(SlotBookingLocalizer.t("select_district"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker(SlotBookingLocalizer.t("select_district"), selection: $selectedDistrict) {
                                    ForEach(districts, id: \.self) { title in
                                        Text(title.name)
                                            .tag(Optional(title))
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
                                .onChange(of: selectedDistrict) { newValue in
                                    if let district = newValue {
                                        if district.id != 0 {
                                            loadMarkets()
                                        } else {
                                            markets = []
                                        }
                                    } else {
                                        markets = []
                                    }
                                }
                                
                                // Market selection
                                Text(SlotBookingLocalizer.t("select_market"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker(SlotBookingLocalizer.t("select_market"), selection: $selectedMarket) {
                                    ForEach(markets, id: \.self) { title in
                                        Text(title.name)
                                            .tag(Optional(title))
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
                                ).onChange(of: selectedMarket){newValue in
                                    if let market = newValue {
                                        if market.id != 0 {
                                            loadMills()
                                        } else {
                                            mills = []
                                        }
                                    } else {
                                        mills = []
                                    }
                                }
                                
                                // Mill selection
                                Text(SlotBookingLocalizer.t("select_mill"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker(SlotBookingLocalizer.t("select_mill"), selection: $selectedMill) {
                                    ForEach(mills, id: \.self) { title in
                                        Text(title.name)
                                            .tag(Optional(title))
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
                                HStack {
                                    Text(SlotBookingLocalizer.t("farmer_left_qty"))
                                        .font(.system(size: 14))
                                        .frame(maxWidth: .infinity, alignment: .leading)

                                    TextField(SlotBookingLocalizer.t("farmer_left_qty"), text: $expectedYeild)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .frame(width: 150, height: 48)
                                        .disabled(true)
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                }
                                
                                // Approximate weight
                                Text(SlotBookingLocalizer.t("approx_weight"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                TextField(SlotBookingLocalizer.t("approx_weight"), text: $approxWeight)
                                    .keyboardType(.decimalPad)
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
                                
                                // Available slots (shown conditionally)
                                if showAvailableSlots {
                                    Group {
                                        HStack {
                                            Text(SlotBookingLocalizer.t("mill_capacity"))
                                                .font(.system(size: 16, weight: .bold))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                            
                                            Text(MillCapacity)
                                                .font(.system(size: 16, weight: .semibold))
                                                .foregroundColor(.blue)
                                        }
                                        .padding(.top, 24)
                                        
                                        Text(SlotBookingLocalizer.t("available_slots"))
                                            .font(.system(size: 16, weight: .bold))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.top, 24)
                                        
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 12) {
                                                ForEach(slots, id: \.id) { slot in
                                                    Button(action: {
                                                        // toggle selection
                                                        if selectedSlot?.id == slot.id {
                                                            selectedSlot = nil  // deselect if clicked again
                                                        } else {
                                                            selectedSlot = slot
                                                        }
                                                    }) {
                                                        HStack {
                                                            Image(systemName: selectedSlot?.id == slot.id ? "checkmark.square.fill" : "square")
                                                                .foregroundColor(.blue)
                                                            
                                                            VStack(alignment: .leading, spacing: 4) {
                                                                Text(slot.centerSlotTimeName) // Slot Time
                                                                    .font(.system(size: 14, weight: .semibold))
                                                                
                                                                Text("\(SlotBookingLocalizer.t("available")) \(slot.availableSlots)")
                                                                    .font(.system(size: 12))
                                                                    .foregroundColor(.green)
                                                                
                                                                Text("\(SlotBookingLocalizer.t("used")) \(slot.usedSlots)")
                                                                    .font(.system(size: 12))
                                                                    .foregroundColor(.red)
                                                            }
                                                        }
                                                        .padding()
                                                        .frame(width: 160, alignment: .leading)
                                                        .background(selectedSlot?.id == slot.id ? Color.blue.opacity(0.2) : Color.blue.opacity(0.1))
                                                        .cornerRadius(8)
                                                    }
                                                }
                                            }
                                        }
                                        .frame(height: 100)
                                        .padding(.top, 8)
                                    }
                                }
                                
                                // Date selection
                                Text(SlotBookingLocalizer.t("select_date"))
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.green)
                                    .padding(.top, 24)
                                
                                DatePicker(
                                    SlotBookingLocalizer.t("select_date"),
                                    selection: $selectedDate,
                                    displayedComponents: .date
                                )
                                .onChange(of: selectedDate) { newDate in
                                    if !validateSelectionsBeforeDate() {
                                        return
                                    }
                                    fetchAvailableSlots(for: newDate)
                                }
                                .datePickerStyle(GraphicalDatePickerStyle())
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                                
                                Text(SlotBookingLocalizer.t("select_date_msg"))
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 16)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 100)
                        }
                    }
                }
                
                // Toast overlay
                if showToast {
                    VStack {
                        Spacer()
                        Text(toastMessage)
                            .padding()
                            .background(Color.black.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.bottom, 20)
                            .transition(.move(edge: .bottom).combined(with: .opacity))
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    withAnimation {
                                        showToast = false
                                    }
                                }
                            }
                    }
                    .frame(maxWidth: .infinity)
                    .zIndex(1000)
                }
                
                // Confirm button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        if validateConfirm() {
                            isSubmitting = true
                            confirmBooking()
                        }
                    }) {
                        Text(SlotBookingLocalizer.t("confirm_slot"))
                            .font(.system(size: 18, weight: .bold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                    }
                    .disabled(isSubmitting)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .background(
                NavigationLink(destination: HomeView(), isActive: $gotoHome) {
                    EmptyView()
                }
            )
            .alert(isPresented: $showValidationAlert) {
                if validationTitle == SlotBookingLocalizer.t("booking_success") {
                    return Alert(
                        title: Text(validationTitle),
                        message: Text(validationMessage),
                        dismissButton: .default(Text(SlotBookingLocalizer.t("ok"))) {
                            isSubmitting = false
                            // This triggers navigation
                            gotoHome = true
                        }
                    )
                } else {
                    return Alert(
                        title: Text(validationTitle),
                        message: Text(validationMessage),
                        dismissButton: .default(Text(SlotBookingLocalizer.t("ok"))) {
                            isSubmitting = false // ✅ Reset after failure
                        }
                    )
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .onAppear{
            loadStates()
            expectedYeild = "\(SessionManager.shared.farmerDetails?.expectedYeild ?? 0)"
        }
        .preferredColorScheme(.light)
    }
    
    // MARK: - States
    private func loadStates() {
        if let token = SessionManager.shared.authToken{
            ApiService.shared.getStates(token: token) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.states = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedState = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Districts
    private func loadDistricts(){
        if let token = SessionManager.shared.authToken,
           let stateId = selectedState?.id {
            ApiService.shared.getDistricts(token: token, stateId: stateId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.districts = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedDistrict = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Markets
    private func loadMarkets(){
        if let token = SessionManager.shared.authToken,
           let districtId = selectedDistrict?.id {
            ApiService.shared.getDistrictMarkets(token: token,
                                                districtId: districtId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.markets = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedMarket = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Mills
    private func loadMills(){
        if let token = SessionManager.shared.authToken,
           let marketId = selectedMarket?.id {
            ApiService.shared.getMills(token: token,
                                                marketId: marketId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.mills = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedMill = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    func fetchAvailableSlots(for date: Date) {
        let components = Calendar.current.dateComponents([.month, .day], from: date)
        
        guard let monthId = components.month,
              let dayId = components.day,
              let token = SessionManager.shared.authToken,
              let centerId = selectedMill?.id else {
            return
        }

        ApiService.shared.getAvailableSlots(
            token: token,
            centerId: centerId,
            monthId: monthId,
            dayId: dayId
        ) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let fetchedSlots):
                    self.slots = fetchedSlots
                    self.showAvailableSlots = true
                    
                    if let firstSlot = fetchedSlots.first {
                        let maxLimit = Int(firstSlot.maxLimit) ?? 0
                        let pCapacity = Int(firstSlot.pCapacity) ?? 0
                        let threshold = maxLimit - pCapacity

                        let availableCapacityInt =
                            Int(firstSlot.availableCapacity) ?? 0
                        let millProcessingCapacityInt = availableCapacityInt + threshold

                        self.MillCapacity = String(millProcessingCapacityInt)
                    }
                case .failure(let error):
                    print("Error fetching slots: \(error)")
                }
            }
        }
    }
    
    private func validateSelectionsBeforeDate() -> Bool {
        validationTitle = SlotBookingLocalizer.t("validation_error")
        if selectedState?.id == nil || selectedState?.id == 0 {
            validationMessage = "Please select a valid State before choosing a date."
            showValidationAlert = true
            return false
        }
        if selectedDistrict?.id == nil || selectedDistrict?.id == 0 {
            validationMessage = "Please select a valid District before choosing a date."
            showValidationAlert = true
            return false
        }
        if selectedMarket?.id == nil || selectedMarket?.id == 0 {
            validationMessage = "Please select a valid Market before choosing a date."
            showValidationAlert = true
            return false
        }
        if selectedMill?.id == nil || selectedMill?.id == 0 {
            validationMessage = "Please select a valid Mill before choosing a date."
            showValidationAlert = true
            return false
        }
        return true
    }
    
    private func validateConfirm() -> Bool {
        validationTitle = SlotBookingLocalizer.t("validation_error")
        if selectedState?.id == nil || selectedState?.id == 0 {
            validationMessage = SlotBookingLocalizer.t("valid_state")
            showValidationAlert = true
            return false
        }
        if selectedDistrict?.id == nil || selectedDistrict?.id == 0 {
            validationMessage = SlotBookingLocalizer.t("valid_district")
            showValidationAlert = true
            return false
        }
        if selectedMarket?.id == nil || selectedMarket?.id == 0 {
            validationMessage = SlotBookingLocalizer.t("valid_market")
            showValidationAlert = true
            return false
        }
        if selectedMill?.id == nil || selectedMill?.id == 0 {
            validationMessage = SlotBookingLocalizer.t("valid_mill")
            showValidationAlert = true
            return false
        }
        if approxWeight.isEmpty {
            validationMessage = SlotBookingLocalizer.t("enter_approx_qty")
            showValidationAlert = true
            return false
        }
        if let approx = Double(approxWeight), let expected = Double(expectedYeild) {
            if approx > expected {
                validationMessage = "\(SlotBookingLocalizer.t("qty_exceed")) (\(expected))."
                showValidationAlert = true
                return false
            }
        }
        if selectedSlot == nil {   // ✅ Slot validation
            validationMessage = SlotBookingLocalizer.t("select_slot")
                showValidationAlert = true
                return false
            }
        return true
    }
    
    private func confirmBooking(){
        let bookingRequest = SlotBookingRequest(
            farmerId: SessionManager.shared.farmerDetails?.pkFarmerID ?? 0,
            daySlotId: selectedSlot?.dayID ?? 0,
            centerId: selectedMill?.id ?? 0,
            transactionId: "",
            approxWgt: Decimal(string: approxWeight) ?? 0,
            remarks: "",
            userId: 0
        )
        
        if let token = SessionManager.shared.authToken {
            ApiService.shared.createBooking(token: token, request: bookingRequest) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(_):
                        // ✅ Show success popup
                        validationTitle = SlotBookingLocalizer.t("booking_success")
                        validationMessage = SlotBookingLocalizer.t("booking_success_msg")
                        showValidationAlert = true

                    case .failure(let error):
                        // ❌ Show toast
                        showToast = true
                        let nsError = error as NSError

                        if let responseJson = nsError.userInfo["ResponseJSON"] as? String {
                            if let jsonData = responseJson.data(using: .utf8),
                               let jsonObject = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
                                
                                if let errorMessage = jsonObject["message"] as? String {
                                    toastMessage = "Booking failed: \(errorMessage)"
                                } else if let errorMessage = jsonObject["error"] as? String {
                                    toastMessage = "Booking failed: \(errorMessage)"
                                } else if let errors = jsonObject["errors"] as? [String: Any] {
                                    if let firstError = errors.values.first as? [String],
                                       let firstErrorMessage = firstError.first {
                                        toastMessage = "Booking failed: \(firstErrorMessage)"
                                    } else if let firstError = errors.values.first as? String {
                                        toastMessage = "Booking failed: \(firstError)"
                                    } else {
                                        toastMessage = "Booking failed: \(responseJson)"
                                    }
                                } else {
                                    toastMessage = "Booking failed: \(responseJson)"
                                }
                            } else {
                                toastMessage = "Booking failed: \(responseJson)"
                            }
                        } else {
                            toastMessage = "Booking failed: \(error.localizedDescription)"
                        }
                    }
                }
            }
        }
    }
}

struct SlotBookingView_Previews: PreviewProvider {
    static var previews: some View {
        SlotBookingView()
    }
}
