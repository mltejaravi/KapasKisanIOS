import SwiftUI

// MARK: - Registration View Localizer

class RegistrationLocalizer {
    static func t(_ key: String) -> String {
        let lang = SessionManager.shared.selectedLanguage ?? "English"
        return translations[lang]?[key] ?? translations["English"]?[key] ?? key
    }
    
    private static let translations: [String: [String: String]] = [
        "English": [
            "farmer_registration":"Farmer Registration",
            "reg_number": "Registration Number",
            "select_title": "Select Title",
            "farmer_name": "Farmer Name",
            "father_name": "Father's Name",
            "select_gender": "Select Gender",
            "select_dob": "Select Date of Birth",
            "select_caste": "Select Caste",
            "aadhar_number": "Aadhar Number",
            "mobile_number": "Mobile Number",
            "address": "Address",
            "land_details": "Land Details",
            "select_state": "Select State",
            "select_district": "Select District",
            "select_mandal_block": "Select Mandal/Block",
            "select_villate": "Select Village",
            "select_market": "Select Market",
            "select_farmer_type": "Select Farmer Type",
            "select_measure_type": "Select Measure Type",
            "passbook_no": "Passbook No/Khatha No",
            "total_land": "Total Land",
            "cotton_land": "Cotton Land",
            "select_crop_type": "Select Crop Type",
            "traditional_crop": "Traditional Crop",
            "hdps": "HDPS",
            "desi_cotton": "Desi Cotton",
            "closer_spacing": "Closer Spacing",
            "upload_farmer_photo": "Upload Farmer Photo and Aadhar (Image Only)",
            "upload_land_documents": "Upload Land Documents (PDF Only)",
            "submit_registration": "Submit Registration"
        ],
        "Telugu": [
            "farmer_registration":"రైతు నమోదు",
            "reg_number": "రిజిస్ట్రేషన్ నంబర్",
            "select_title": "శీర్షికను ఎంచుకోండి",
            "farmer_name": "రైతు పేరు",
            "father_name": "తండ్రి పేరు",
            "select_gender": "లింగాన్ని ఎంచుకోండి",
            "select_dob": "పుట్టిన తేదీని ఎంచుకోండి",
            "select_caste": "కులాన్ని ఎంచుకోండి",
            "aadhar_number": "ఆధార్ నంబర్",
            "mobile_number": "మొబైల్ నంబర్",
            "address": "చిరునామా",
            "land_details": "భూమి వివరాలు",
            "select_state": "రాష్ట్రాన్ని ఎంచుకోండి",
            "select_district": "జిల్లాను ఎంచుకోండి",
            "select_mandal_block": "మండలం/బ్లాక్ ఎంచుకోండి",
            "select_villate": "గ్రామాన్ని ఎంచుకోండి",
            "select_market": "మార్కెట్ ఎంచుకోండి",
            "select_farmer_type": "రైతు రకాన్ని ఎంచుకోండి",
            "select_measure_type": "కొలత రకాన్ని ఎంచుకోండి",
            "passbook_no": "పాస్బుక్ నంబర్/ఖతా నంబర్",
            "total_land": "మొత్తం భూమి",
            "cotton_land": "పత్తి భూమి",
            "select_crop_type": "పంట రకాన్ని ఎంచుకోండి",
            "traditional_crop": "సాంప్రదాయ పంట",
            "hdps": "హెచ్.డి.పి.ఎస్",
            "desi_cotton": "దేశీ పత్తి",
            "closer_spacing": "క్లోజర్ స్పేసింగ్",
            "upload_farmer_photo": "రైతు ఫోటో మరియు ఆధార్ అప్లోడ్ చేయండి (చిత్రం మాత్రమే)",
            "upload_land_documents": "భూమి డాక్యుమెంట్స్ అప్లోడ్ చేయండి (PDF మాత్రమే)",
            "submit_registration": "నమోదును సమర్పించండి"
        ],
        "Hindi": [
            "farmer_registration":"किसान पंजीकरण",
            "reg_number": "पंजीकरण संख्या",
            "select_title": "शीर्षक चुनें",
            "farmer_name": "किसान का नाम",
            "father_name": "पिता का नाम",
            "select_gender": "लिंग चुनें",
            "select_dob": "जन्म तिथि चुनें",
            "select_caste": "जाति चुनें",
            "aadhar_number": "आधार नंबर",
            "mobile_number": "मोबाइल नंबर",
            "address": "पता",
            "land_details": "जमीन का विवरण",
            "select_state": "राज्य चुनें",
            "select_district": "जिला चुनें",
            "select_mandal_block": "मंडल/ब्लॉक चुनें",
            "select_villate": "गाँव चुनें",
            "select_market": "बाजार चुनें",
            "select_farmer_type": "किसान प्रकार चुनें",
            "select_measure_type": "माप प्रकार चुनें",
            "passbook_no": "पासबुक नंबर/खाता नंबर",
            "total_land": "कुल जमीन",
            "cotton_land": "कपास जमीन",
            "select_crop_type": "फसल प्रकार चुनें",
            "traditional_crop": "पारंपरिक फसल",
            "hdps": "एचडीपीएस",
            "desi_cotton": "देशी कपास",
            "closer_spacing": "क्लोजर स्पेसिंग",
            "upload_farmer_photo": "किसान फोटो और आधार अपलोड करें (केवल छवि)",
            "upload_land_documents": "जमीन के दस्तावेज़ अपलोड करें (केवल PDF)",
            "submit_registration": "पंजीकरण जमा करें"
        ],
        "Kannada": [
            "farmer_registration":"ರೈತ ನೋಂದಣಿ",
            "reg_number": "ನೋಂದಣಿ ಸಂಖ್ಯೆ",
            "select_title": "ಶೀರ್ಷಿಕೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "farmer_name": "ರೈತರ ಹೆಸರು",
            "father_name": "ತಂದೆಯ ಹೆಸರು",
            "select_gender": "ಲಿಂಗವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_dob": "ಜನ್ಮ ದಿನಾಂಕವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_caste": "ಜಾತಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "aadhar_number": "ಆಧಾರ್ ಸಂಖ್ಯೆ",
            "mobile_number": "ಮೊಬೈಲ್ ಸಂಖ್ಯೆ",
            "address": "ವಿಳಾಸ",
            "land_details": "ಭೂಮಿ ವಿವರಗಳು",
            "select_state": "ರಾಜ್ಯವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_district": "ಜಿಲ್ಲೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_mandal_block": "ಮಂಡಲ/ಬ್ಲಾಕ್ ಆಯ್ಕೆಮಾಡಿ",
            "select_villate": "ಗ್ರಾಮವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_market": "ಮಾರುಕಟ್ಟೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_farmer_type": "ರೈತ ಪ್ರಕಾರವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_measure_type": "ಮಾಪನ ಪ್ರಕಾರವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "passbook_no": "ಪಾಸ್ಬುಕ್ ನಂ./ಖಾತಾ ನಂ.",
            "total_land": "ಒಟ್ಟು ಭೂಮಿ",
            "cotton_land": "ಹತ್ತಿ ಭೂಮಿ",
            "select_crop_type": "ಬೆಳೆ ಪ್ರಕಾರವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "traditional_crop": "ಸಾಂಪ್ರದಾಯಿಕ ಬೆಳೆ",
            "hdps": "ಎಚ್ಡಿಪಿಎಸ್",
            "desi_cotton": "ದೇಶಿ ಹತ್ತಿ",
            "closer_spacing": "ಕ್ಲೋಸರ್ ಸ್ಪೇಸಿಂಗ್",
            "upload_farmer_photo": "ರೈತ ಫೋಟೋ ಮತ್ತು ಆಧಾರ್ ಅಪ್ಲೋಡ್ ಮಾಡಿ (ಚಿತ್ರ ಮಾತ್ರ)",
            "upload_land_documents": "ಭೂಮಿ ದಾಖಲೆಗಳನ್ನು ಅಪ್ಲೋಡ್ ಮಾಡಿ (PDF ಮಾತ್ರ)",
            "submit_registration": "ನೋಂದಣಿ ಸಲ್ಲಿಸಿ"
        ],
        "Tamil": [
            "farmer_registration":"விவசாயி பதிவு",
            "reg_number": "பதிவு எண்",
            "select_title": "தலைப்பைத் தேர்ந்தெடுக்கவும்",
            "farmer_name": "விவசாயி பெயர்",
            "father_name": "தந்தை பெயர்",
            "select_gender": "பாலினத்தைத் தேர்ந்தெடுக்கவும்",
            "select_dob": "பிறந்த தேதியைத் தேர்ந்தெ�ுக்கவும்",
            "select_caste": "சாதியைத் தேர்ந்தெடுக்கவும்",
            "aadhar_number": "ஆதார் எண்",
            "mobile_number": "மொபைல் எண்",
            "address": "முகவரி",
            "land_details": "நில விவரங்கள்",
            "select_state": "மாநிலத்தைத் தேர்ந்தெடுக்கவும்",
            "select_district": "மாவட்டத்தைத் தேர்ந்தெடுக்கவும்",
            "select_mandal_block": "மண்டல்/பிளாக் தேர்ந்தெடுக்கவும்",
            "select_villate": "கிராமத்தைத் தேர்ந்தெடுக்கவும்",
            "select_market": "சந்தையைத் தேர்ந்தெடுக்கவும்",
            "select_farmer_type": "விவசாயி வகையைத் தேர்ந்தெடுக்கவும்",
            "select_measure_type": "அளவீடு வகையைத் தேர்ந்தெடுக்கவும்",
            "passbook_no": "பாஸ்புக் எண்/கதா எண்",
            "total_land": "மொத்த நிலம்",
            "cotton_land": "பருத்தி நிலம்",
            "select_crop_type": "பயிர் வகையைத் தேர்ந்தெடுக்கவும்",
            "traditional_crop": "பாரம்பரிய பயிர்",
            "hdps": "எச்டிபிஎஸ்",
            "desi_cotton": "தேசி பருத்தி",
            "closer_spacing": "குளோசர் ஸ்பேசிங்",
            "upload_farmer_photo": "விவசாயி படம் மற்றும் ஆதாரைப் பதிவேற்றவும் (படம் மட்டும்)",
            "upload_land_documents": "நில ஆவணங்களைப் பதிவேற்றவும் (PDF மட்டும்)",
            "submit_registration": "பதிவைச் சமர்ப்பிக்கவும்"
        ],
        "Bengali": [
            "farmer_registration":"কৃষক নিবন্ধন",
            "reg_number": "নিবন্ধন নম্বর",
            "select_title": "শিরোনাম নির্বাচন করুন",
            "farmer_name": "কৃষকের নাম",
            "father_name": "পিতার নাম",
            "select_gender": "লিঙ্গ নির্বাচন করুন",
            "select_dob": "জন্ম তারিখ নির্বাচন করুন",
            "select_caste": "বর্ণ নির্বাচন করুন",
            "aadhar_number": "আধার নম্বর",
            "mobile_number": "মোবাইল নম্বর",
            "address": "ঠিকানা",
            "land_details": "জমির বিবরণ",
            "select_state": "রাজ্য নির্বাচন করুন",
            "select_district": "জেলা নির্বাচন করুন",
            "select_mandal_block": "মণ্ডল/ব্লক নির্বাচন করুন",
            "select_villate": "গ্রাম নির্বাচন করুন",
            "select_market": "বাজার নির্বাচন করুন",
            "select_farmer_type": "কৃষক প্রকার নির্বাচন করুন",
            "select_measure_type": "মাপের প্রকার নির্বাচন করুন",
            "passbook_no": "পাসবুক নম্বর/খাতা নম্বর",
            "total_land": "মোট জমি",
            "cotton_land": "তুলা জমি",
            "select_crop_type": "ফসলের প্রকার নির্বাচন করুন",
            "traditional_crop": "প্রথাগত ফসল",
            "hdps": "এইচডিপিএস",
            "desi_cotton": "দেশি তুলা",
            "closer_spacing": "ক্লোজার স্পেসিং",
            "upload_farmer_photo": "কৃষকের ফটো এবং আধার আপলোড করুন (শুধুমাত্র ছবি)",
            "upload_land_documents": "জমির দলিল আপলোড করুন (শুধুমাত্র PDF)",
            "submit_registration": "নিবন্ধন জমা দিন"
        ],
        "Gujarati": [
            "farmer_registration":"કિસાન નોંધણી",
            "reg_number": "નોંધણી નંબર",
            "select_title": "શીર્ષક પસંદ કરો",
            "farmer_name": "કિસાનનું નામ",
            "father_name": "પિતાનું નામ",
            "select_gender": "લિંગ પસંદ કરો",
            "select_dob": "જન્મ તારીખ પસંદ કરો",
            "select_caste": "જાતિ પસંદ કરો",
            "aadhar_number": "આધાર નંબર",
            "mobile_number": "મોબાઇલ નંબર",
            "address": "સરનામું",
            "land_details": "જમીનની વિગતો",
            "select_state": "રાજ્ય પસંદ કરો",
            "select_district": "જિલ્લો પસંદ કરો",
            "select_mandal_block": "મંડળ/બ્લોક પસંદ કરો",
            "select_villate": "ગામ પસંદ કરો",
            "select_market": "માર્કેટ પસંદ કરો",
            "select_farmer_type": "કિસાન પ્રકાર પસંદ કરો",
            "select_measure_type": "માપ પ્રકાર પસંદ કરો",
            "passbook_no": "પાસબુક નંબર/ખાતા નંબર",
            "total_land": "કુલ જમીન",
            "cotton_land": "કપાસ જમીન",
            "select_crop_type": "પાક પ્રકાર પસંદ કરો",
            "traditional_crop": "પરંપરાગત પાક",
            "hdps": "એચડીપીએસ",
            "desi_cotton": "દેશી કપાસ",
            "closer_spacing": "ક્લોઝર સ્પેસિંગ",
            "upload_farmer_photo": "કિસાન ફોટો અને આધાર અપલોડ કરો (ફક્ત ઇમેજ)",
            "upload_land_documents": "જમીન દસ્તાવેજો અપલોડ કરો (ફક્ત PDF)",
            "submit_registration": "નોંધણી સબમિટ કરો"
        ],
        "Punjabi": [
            "farmer_registration":"ਕਿਸਾਨ ਰਜਿਸਟ੍ਰੇਸ਼ਨ",
            "reg_number": "ਰਜਿਸਟ੍ਰੇਸ਼ਨ ਨੰਬਰ",
            "select_title": "ਟਾਈਟਲ ਚੁਣੋ",
            "farmer_name": "ਕਿਸਾਨ ਦਾ ਨਾਮ",
            "father_name": "ਪਿਤਾ ਦਾ ਨਾਮ",
            "select_gender": "ਲਿੰਗ ਚੁਣੋ",
            "select_dob": "ਜਨਮ ਤਾਰੀਖ ਚੁਣੋ",
            "select_caste": "ਜਾਤੀ ਚੁਣੋ",
            "aadhar_number": "ਆਧਾਰ ਨੰਬਰ",
            "mobile_number": "ਮੋਬਾਈਲ ਨੰਬਰ",
            "address": "ਪਤਾ",
            "land_details": "ਜ਼ਮੀਨ ਦੇ ਵੇਰਵੇ",
            "select_state": "ਰਾਜ ਚੁਣੋ",
            "select_district": "ਜ਼ਿਲ੍ਹਾ ਚੁਣੋ",
            "select_mandal_block": "ਮੰਡਲ/ਬਲਾਕ ਚੁਣੋ",
            "select_villate": "ਪਿੰਡ ਚੁਣੋ",
            "select_market": "ਮਾਰਕੀਟ ਚੁਣੋ",
            "select_farmer_type": "ਕਿਸਾਨ ਪ੍ਰਕਾਰ ਚੁਣੋ",
            "select_measure_type": "ਮਾਪ ਪ੍ਰਕਾਰ ਚੁਣੋ",
            "passbook_no": "ਪਾਸਬੁੱਕ ਨੰਬਰ/ਖਾਤਾ ਨੰਬਰ",
            "total_land": "ਕੁੱਲ ਜ਼ਮੀਨ",
            "cotton_land": "ਕਪਾਹ ਜ਼ਮੀਨ",
            "select_crop_type": "ਫਸਲ ਪ੍ਰਕਾਰ ਚੁਣੋ",
            "traditional_crop": "ਰਵਾਇਤੀ ਫਸਲ",
            "hdps": "ਐਚਡੀਪੀਐਸ",
            "desi_cotton": "ਦੇਸੀ ਕਪਾਹ",
            "closer_spacing": "ਕਲੋਜ਼ਰ ਸਪੇਸਿੰਗ",
            "upload_farmer_photo": "ਕਿਸਾਨ ਫੋਟੋ ਅਤੇ ਆਧਾਰ ਅਪਲੋਡ ਕਰੋ (ਸਿਰਫ਼ ਚਿੱਤਰ)",
            "upload_land_documents": "ਜ਼ਮੀਨ ਦੇ ਦਸਤਾਵੇਜ਼ ਅਪਲੋਡ ਕਰੋ (ਸਿਰਫ਼ PDF)",
            "submit_registration": "ਰਜਿਸਟ੍ਰੇਸ਼ਨ ਜਮ੍ਹਾਂ ਕਰੋ"
        ],
        "Marathi": [
            "farmer_registration":"शेतकरी नोंदणी",
            "reg_number": "नोंदणी क्रमांक",
            "select_title": "शीर्षक निवडा",
            "farmer_name": "शेतकरी नाव",
            "father_name": "वडिलांचे नाव",
            "select_gender": "लिंग निवडा",
            "select_dob": "जन्मतारीख निवडा",
            "select_caste": "जात निवडा",
            "aadhar_number": "आधार नंबर",
            "mobile_number": "मोबाइल नंबर",
            "address": "पत्ता",
            "land_details": "जमीन तपशील",
            "select_state": "राज्य निवडा",
            "select_district": "जिल्हा निवडा",
            "select_mandal_block": "मंडळ/ब्लॉक निवडा",
            "select_villate": "गाव निवडा",
            "select_market": "बाजार निवडा",
            "select_farmer_type": "शेतकरी प्रकार निवडा",
            "select_measure_type": "माप प्रकार निवडा",
            "passbook_no": "पासबुक नं./खाता नं.",
            "total_land": "एकूण जमीन",
            "cotton_land": "कापूस जमीन",
            "select_crop_type": "पीक प्रकार निवडा",
            "traditional_crop": "पारंपरिक पीक",
            "hdps": "एचडीपीएस",
            "desi_cotton": "देशी कापूस",
            "closer_spacing": "क्लोजर स्पेसिंग",
            "upload_farmer_photo": "शेतकरी फोटो आणि आधार अपलोड करा (फक्त प्रतिमा)",
            "upload_land_documents": "जमीन दस्तऐवज अपलोड करा (फक्त PDF)",
            "submit_registration": "नोंदणी सबमिट करा"
        ],
        "Odia": [
            "farmer_registration":"କୃଷକ ପଞ୍ଜୀକରଣ",
            "reg_number": "ପଞ୍ଜୀକରଣ ସଂଖ୍ୟା",
            "select_title": "ଶୀର୍ଷକ ବାଛନ୍ତୁ",
            "farmer_name": "କୃଷକର ନାମ",
            "father_name": "ପିତାଙ୍କ ନାମ",
            "select_gender": "ଲିଙ୍ଗ ବାଛନ୍ତୁ",
            "select_dob": "ଜନ୍ମ ତାରିଖ ବାଛନ୍ତୁ",
            "select_caste": "ଜାତି ବାଛନ୍ତୁ",
            "aadhar_number": "ଆଧାର ନମ୍ବର",
            "mobile_number": "ମୋବାଇଲ୍ ନମ୍ବର",
            "address": "ଠିକଣା",
            "land_details": "ଜମିର ବିବରଣୀ",
            "select_state": "ରାଜ୍ୟ ବାଛନ୍ତୁ",
            "select_district": "ଜିଲ୍ଲା ବାଛନ୍ତୁ",
            "select_mandal_block": "ମଣ୍ଡଳ/ବ୍ଲକ୍ ବାଛନ୍ତୁ",
            "select_villate": "ଗ୍ରାମ ବାଛନ୍ତୁ",
            "select_market": "ବଜାର ବାଛନ୍ତୁ",
            "select_farmer_type": "କୃଷକ ପ୍ରକାର ବାଛନ୍ତୁ",
            "select_measure_type": "ମାପ ପ୍ରକାର ବାଛନ୍ତୁ",
            "passbook_no": "ପାସବୁକ୍ ନମ୍ବର/ଖାତା ନମ୍ବର",
            "total_land": "ମୋଟ ଜମି",
            "cotton_land": "କପାହ ଜମି",
            "select_crop_type": "ଫସଲ ପ୍ରକାର ବାଛନ୍ତୁ",
            "traditional_crop": "ପାରମ୍ପରିକ ଫସଲ",
            "hdps": "ଏଚଡିପିଏସ",
            "desi_cotton": "ଦେଶୀ କପାହ",
            "closer_spacing": "କ୍ଲୋଜର୍ ସ୍ପେସିଂ",
            "upload_farmer_photo": "କୃଷକ ଫଟୋ ଏବଂ ଆଧାର ଅପଲୋଡ୍ କରନ୍ତୁ (କେବଳ ପ୍ରତିଛବି)",
            "upload_land_documents": "ଜମି ଡକ୍ୟୁମେଣ୍ଟସ୍ ଅପଲୋଡ୍ କରନ୍ତୁ (କେବଳ PDF)",
            "submit_registration": "ପଞ୍ଜୀକରଣ ଦାଖଲ କରନ୍ତୁ"
        ]
    ]
}


// MARK: - Registration View
struct RegistrationView: View {
    // State variables for form fields
    @State private var registrationNumber: String = ""
    
    @State private var showToast = false
    @State private var toastMessage = ""
    
    @State private var titles: [Title] = []
    @State private var selectedTitle: Title?
    
    @State private var genders:[Title] = []
    @State private var selectedGender:Title?
    
    @State private var categories:[Title] = []
    @State private var selectedCategory: Title?
    
    @State private var states:[Title] = []
    @State private var selectedState: Title?
    
    @State private var districts:[Title] = []
    @State private var selectedDistrict: Title?
    
    @State private var mandals:[Title] = []
    @State private var selectedMandal: Title?
    
    @State private var villages:[Title] = []
    @State private var selectedVillage: Title?
    
    @State private var markets:[Title] = []
    @State private var selectedMarket: Title?
    
    @State private var farmerTypes:[Title] = []
    @State private var selectedFarmerType: Title?
    
    @State private var farmerName: String = ""
    @State private var fatherName: String = ""
    @State private var dob: Date = Date()
    @State private var aadharNumber: String = ""
    @State private var mobileNumber: String = ""
    @State private var address: String = ""
    @State private var passbookNumber: String = ""
    @State private var totalLand: String = ""
    @State private var cottonLand: String = ""
    @State private var selectedMeasureType = "Acres"
    @State private var isTraditional = false
    @State private var traditionalLand = ""
    @State private var isHDPS = false
    @State private var hdpsLand = ""
    @State private var isDesiCotton = false
    @State private var desiCottonLand = ""
    @State private var isCloserSpacing = false
    @State private var closerSpacingLand = ""
    
    private let measureTypes = ["Acres", "Hectares"]
    
    @State private var showingDatePicker = false
    @State private var showingImagePicker = false
    @State private var showingDocumentPicker = false
    @State private var selectedImages: [UIImage] = []
    @State private var selectedDocuments: [URL] = []
    @State private var gotoHome = false
    
    @State private var uniqueNames: UniqueNames?
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    @State private var text4: String = ""
    
    @State private var useCamera = false
    @State private var showImageSourceActionSheet = false
    
    @State private var showValidationAlert = false
    @State private var validationMessage = ""
    @State private var validationTitle = ""
    
    @State private var isSubmitting = false
    
    @State private var goToSelectProfile = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                // Elements/Fields
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
                        
                        Text(RegistrationLocalizer.t("farmer_registration"))
                            .font(.system(size: 24, weight: .bold))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 8)
                    
                    // Scrollable form
                    ScrollView {
                        VStack(spacing: 16) {
                            // Form container
                            VStack(spacing: 16) {
                                Group {
                                    // Registration Number
                                    TextField(RegistrationLocalizer.t("reg_number"), text: $registrationNumber)
                                        .disabled(true)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    // Title selection
                                    Text(RegistrationLocalizer.t("select_title"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_title"), selection: $selectedTitle) {
                                        ForEach(titles, id: \.id) { title in
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
                                    .onChange(of: titles) { _ in
                                        if let farmer = SessionManager.shared.farmerDetails,
                                           let salutationId = farmer.pkSalutationID,
                                           let salutationName = farmer.salutationName {
                                            
                                            if let match = titles.first(where: {
                                                $0.id == Int(salutationId) &&
                                                $0.name.caseInsensitiveCompare(salutationName) == .orderedSame
                                            }) {
                                                selectedTitle = match
                                            }
                                        }
                                    }
                                    
                                    // Farmer Name
                                    TextField(RegistrationLocalizer.t("farmer_name"), text: $farmerName)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    // Father's Name
                                    TextField(RegistrationLocalizer.t("father_name"), text: $fatherName)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    // Gender selection
                                    Text(RegistrationLocalizer.t("select_gender"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_gender"), selection: $selectedGender) {
                                        ForEach(genders, id: \.self) { title in
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
                                    .onChange(of: genders) { newGenders in
                                        if let farmer = SessionManager.shared.farmerDetails,
                                           let genderName = farmer.genderName {
                                            selectedGender = newGenders.first { $0.name == genderName }
                                        }
                                    }
                                    
                                    // Date of Birth
                                    
                                    Text(RegistrationLocalizer.t("select_dob"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Button(action: {
                                        showingDatePicker = true
                                    }) {
                                        HStack {
                                            Text(dob, style: .date)
                                                .foregroundColor(dob == Date() ? .gray : .black)
                                            Spacer()
                                            Image(systemName: "calendar")
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.white)
                                        .cornerRadius(8)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8)
                                                .stroke(Color.gray, lineWidth: 1)
                                        )
                                    }
                                    .sheet(isPresented: $showingDatePicker) {
                                        DatePicker(RegistrationLocalizer.t("select_dob"), selection: $dob, displayedComponents: .date)
                                            .datePickerStyle(GraphicalDatePickerStyle())
                                            .labelsHidden()
                                            .padding()
                                    }
                                    
                                    // Category selection
                                    Text(RegistrationLocalizer.t("select_caste"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_caste"), selection: $selectedCategory) {
                                        ForEach(categories, id: \.self) { title in
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
                                    .onChange(of: categories) { newCategories in
                                        if let farmer = SessionManager.shared.farmerDetails,
                                           let casteName = farmer.casteName {
                                            selectedCategory = newCategories.first { $0.name == casteName }
                                        }
                                    }
                                    
                                    // Aadhar Number
                                    TextField(RegistrationLocalizer.t("aadhar_number"), text: $aadharNumber)
                                        .keyboardType(.numberPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .onChange(of: aadharNumber) { newValue in
                                            let filtered = newValue.filter { $0.isNumber }
                                            if filtered.count > 12 {
                                                aadharNumber = String(filtered.prefix(12))
                                            } else {
                                                aadharNumber = filtered
                                            }
                                        }
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    // Mobile Number
                                    TextField(RegistrationLocalizer.t("mobile_number"), text: $mobileNumber)
                                        .keyboardType(.phonePad)
                                        .disabled(true)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .onChange(of: mobileNumber) { newValue in
                                            let filtered = newValue.filter { $0.isNumber }
                                            if filtered.count > 10 {
                                                mobileNumber = String(filtered.prefix(10))
                                            } else {
                                                mobileNumber = filtered
                                            }
                                        }
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                }
                                
                                Group {
                                    // Address
                                    TextField(RegistrationLocalizer.t("address"), text: $address)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    // Land Details Section
                                    Text(RegistrationLocalizer.t("land_details"))
                                        .font(.system(size: 14, weight: .bold))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top, 8)
                                    
                                    
                                    // State selection
                                    Text(RegistrationLocalizer.t("select_state"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_state"), selection: $selectedState) {
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
                                    .onChange(of: states) { newStates in
                                        if let farmer = SessionManager.shared.farmerDetails,
                                           let stateName = farmer.stateName {
                                            selectedState = newStates.first { $0.name == stateName }
                                        }
                                    }
                                    .onChange(of: selectedState) { newValue in
                                        mandals = []
                                        villages = []
                                        markets = []
                                        
                                        if let state = newValue {
                                            if state.id != 0 {
                                                loadDistricts()
                                                loadUniqueNames()
                                            } else {
                                                districts = []
                                            }
                                        } else {
                                            districts = []
                                        }
                                    }
                                    
                                    // District selection
                                    Text(RegistrationLocalizer.t("select_district"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_district"), selection: $selectedDistrict) {
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
                                    .onChange(of: districts) { newDistricts in
                                        if let farmer = SessionManager.shared.farmerDetails,
                                           let districtName = farmer.districtName {
                                            selectedDistrict = newDistricts.first { $0.name == districtName }
                                        }
                                    }
                                    .onChange(of: selectedDistrict) { newValue in
                                        villages = []
                                        
                                        if let district = newValue {
                                            if district.id != 0 {
                                                loadMandals()
                                                loadMarkets()
                                            } else {
                                                mandals = []
                                                markets = []
                                            }
                                        } else {
                                            mandals = []
                                            markets = []
                                        }
                                    }
                                    
                                    // Mandal selection
                                    Text(RegistrationLocalizer.t("select_mandal_block"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_mandal_block"), selection: $selectedMandal) {
                                        ForEach(mandals, id: \.self) { title in
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
                                    .onChange(of: mandals) { newMandals in
                                        if let farmer = SessionManager.shared.farmerDetails,
                                           let mandalName = farmer.mandalName {
                                            selectedMandal = newMandals.first { $0.name == mandalName }
                                        }
                                    }
                                    .onChange(of: selectedMandal) { newValue in
                                        if let mandal = newValue {
                                            if mandal.id != 0 {
                                                loadVillages()
                                            } else {
                                                villages = []
                                            }
                                        } else {
                                            villages = []
                                        }
                                    }
                                    
                                    // Village selection
                                    Text(RegistrationLocalizer.t("select_villate"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_villate"), selection: $selectedVillage) {
                                        ForEach(villages, id: \.self) { title in
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
                                    .onChange(of: villages) { newVillages in
                                        if let farmer = SessionManager.shared.farmerDetails,
                                           let villageName = farmer.villageName {
                                            selectedVillage = newVillages.first { $0.name == villageName }
                                        }
                                    }
                                    
                                    
                                    // Market selection
                                    Text(RegistrationLocalizer.t("select_market"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_market"), selection: $selectedMarket) {
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
                                    )
                                    .onChange(of: markets) { newMarkets in
                                        if let farmer = SessionManager.shared.farmerDetails,
                                           let marketName = farmer.marketName {
                                            selectedMarket = newMarkets.first { $0.name == marketName }
                                        }
                                    }
                                    
                                    // Farmer Type selection
                                    Text(RegistrationLocalizer.t("select_farmer_type"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_farmer_type"), selection: $selectedFarmerType) {
                                        ForEach(farmerTypes, id: \.self) { title in
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
                                    
                                    Text(RegistrationLocalizer.t("select_measure_type"))
                                        .frame(maxWidth:.infinity, alignment:.leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(RegistrationLocalizer.t("select_measure_type"), selection: $selectedMeasureType) {
                                        ForEach(measureTypes, id: \.self) { type in
                                            Text(type).tag(type)
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
                                    
                                    // Passbook Number
                                    if (uniqueNames?.uniQ_ID_1_NAMING?.isEmpty ?? true) &&
                                        (uniqueNames?.uniQ_ID_2_NAMING?.isEmpty ?? true) &&
                                        (uniqueNames?.uniQ_ID_3_NAMING?.isEmpty ?? true) &&
                                        (uniqueNames?.uniQ_ID_4_NAMING?.isEmpty ?? true) {
                                        
                                        TextField(RegistrationLocalizer.t("passbook_no"), text: $passbookNumber)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    
                                    if let name = uniqueNames?.uniQ_ID_1_NAMING, !name.isEmpty {
                                        TextField(name, text: $text1)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    if let name = uniqueNames?.uniQ_ID_2_NAMING, !name.isEmpty {
                                        TextField(name, text: $text2)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    if let name = uniqueNames?.uniQ_ID_3_NAMING, !name.isEmpty {
                                        TextField(name, text: $text3)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    if let name = uniqueNames?.uniQ_ID_4_NAMING, !name.isEmpty {
                                        TextField(name, text: $text4)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    
                                    // Total Land
                                    TextField(RegistrationLocalizer.t("total_land"), text: $totalLand)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    // Cotton Land
                                    TextField(RegistrationLocalizer.t("cotton_land"), text: $cottonLand)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    Text(RegistrationLocalizer.t("select_crop_type"))
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    
                                    /// Traditional Crop
                                    HStack {
                                        Toggle(RegistrationLocalizer.t("traditional_crop"), isOn: $isTraditional)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isTraditional) { newValue in
                                                if !newValue { traditionalLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $traditionalLand)
                                            .disabled(!isTraditional)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
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
                                    
                                    // HDPS
                                    HStack {
                                        Toggle(RegistrationLocalizer.t("hdps"), isOn: $isHDPS)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isHDPS) { newValue in
                                                if !newValue { hdpsLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $hdpsLand)
                                            .disabled(!isHDPS)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
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
                                    
                                    // Desi Cotton
                                    HStack {
                                        Toggle(RegistrationLocalizer.t("desi_cotton"), isOn: $isDesiCotton)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isDesiCotton) { newValue in
                                                if !newValue { desiCottonLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $desiCottonLand)
                                            .disabled(!isDesiCotton)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
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
                                    
                                    // Closer Spacing
                                    HStack {
                                        Toggle(RegistrationLocalizer.t("closer_spacing"), isOn: $isCloserSpacing)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isCloserSpacing) { newValue in
                                                if !newValue { closerSpacingLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $closerSpacingLand)
                                            .disabled(!isCloserSpacing)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
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
                                }
                                
                                // Upload buttons
                                Group {
                                    Button(action: {
                                        showImageSourceActionSheet = true
                                    }) {
                                        Text(RegistrationLocalizer.t("upload_farmer_photo"))
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.blue)
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                    }
                                    .actionSheet(isPresented: $showImageSourceActionSheet) {
                                        ActionSheet(title: Text("Select Photo Source"),
                                                    buttons: [
                                                        .default(Text("Camera")) {
                                                            useCamera = true
                                                            showingImagePicker = true
                                                        },
                                                        .default(Text("Gallery")) {
                                                            useCamera = false
                                                            showingImagePicker = true
                                                        },
                                                        .cancel()
                                                    ])
                                    }
                                    .sheet(isPresented: $showingImagePicker) {
                                        ImagePicker(selectedImages: $selectedImages,
                                                    showToast: $showToast,
                                                    toastMessage: $toastMessage,
                                                    sourceType: useCamera ? .camera : .photoLibrary)
                                    }
                                    
                                    if !selectedImages.isEmpty {
                                        ScrollView(.horizontal) {
                                            HStack {
                                                ForEach(Array(selectedImages.enumerated()), id: \.element) { index, image in
                                                    ZStack(alignment: .topTrailing) {
                                                        Image(uiImage: image)
                                                            .resizable()
                                                            .scaledToFill()
                                                            .frame(width: 100, height: 100)
                                                            .cornerRadius(8)
                                                            .clipped()
                                                        
                                                        // Close button
                                                        Button(action: {
                                                            selectedImages.remove(at: index)
                                                        }) {
                                                            Image(systemName: "xmark.circle.fill")
                                                                .foregroundColor(.red)
                                                                .background(Color.white.clipShape(Circle()))
                                                        }
                                                        .offset(x: 5, y: -5) // position top-right
                                                    }
                                                }
                                            }
                                            .padding(.horizontal)
                                        }
                                        .frame(height: 100)
                                    }
                                    
                                    Button(action: {
                                        showingDocumentPicker = true
                                    }) {
                                        Text(RegistrationLocalizer.t("upload_land_documents"))
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.blue)
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                    }
                                    
                                    if !selectedDocuments.isEmpty {
                                        VStack(alignment: .leading, spacing: 8) {
                                            ForEach(Array(selectedDocuments.enumerated()), id: \.element) { index, url in
                                                HStack {
                                                    Image(systemName: "doc.text.fill")
                                                        .foregroundColor(.blue)
                                                    
                                                    Text(url.lastPathComponent)
                                                        .lineLimit(1)
                                                        .truncationMode(.middle)
                                                    
                                                    Spacer()
                                                    
                                                    // Close button
                                                    Button(action: {
                                                        selectedDocuments.remove(at: index)
                                                    }) {
                                                        Image(systemName: "xmark.circle.fill")
                                                            .foregroundColor(.red)
                                                            .background(Color.white.clipShape(Circle()))
                                                    }
                                                }
                                                .padding(8)
                                                .background(Color.gray.opacity(0.1))
                                                .cornerRadius(8)
                                            }
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 80)
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
                
                // Submit button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        if validateForm() {
                            isSubmitting = true
                            submitRegistration()
                        } else {
                            showValidationAlert = true
                        }
                    }) {
                        Text(RegistrationLocalizer.t("submit_registration"))
                            .font(.system(size: 18, weight: .bold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(
                                (SessionManager.shared.barCode ?? "").isEmpty
                                ? Color.blue   // when empty → active
                                : Color.gray   // when not empty → greyed out
                            )
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                    }
                    .disabled(isSubmitting || !(SessionManager.shared.barCode ?? "").isEmpty)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)
                    .alert(isPresented: $showValidationAlert) {
                        if validationTitle == "Registration Successful!" {
                            return Alert(
                                title: Text(validationTitle),
                                message: Text(validationMessage),
                                dismissButton: .default(Text("OK")) {
                                    isSubmitting = false
                                    // This triggers navigation
                                    //gotoHome = true
                                    goToSelectProfile = true
                                }
                            )
                        } else {
                            return Alert(
                                title: Text(validationTitle),
                                message: Text(validationMessage),
                                dismissButton: .default(Text("OK")) {
                                    isSubmitting = false // ✅ Reset after failure
                                }
                            )
                        }
                    }
                }
            }
            .sheet(isPresented: $showingDocumentPicker) {
                DocumentPicker(selectedDocuments: $selectedDocuments)
            }
            // NavigationLink at the root level of ZStack
            .background(
                ZStack {
                    NavigationLink(destination: HomeView(), isActive: $gotoHome) {
                        EmptyView()
                    }
                    NavigationLink(destination: SelectProfileView(), isActive: $goToSelectProfile) {
                        EmptyView()
                    }
                }
            )
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .onAppear {
            loadTitles()
            loadGenders()
            loadCategories()
            loadStates()
            loadFarmerTypes()
            
            mobileNumber = SessionManager.shared.mobileNumber ?? ""
            
            if let barcode = SessionManager.shared.barCode,
               let farmer = SessionManager.shared.farmerDetails{
                if(!barcode.isEmpty){
                    // Text fields
                    registrationNumber = barcode
                    if let fullname =  farmer.farmerFullname,
                       let faddress = farmer.fAddress,
                       let mobileNo = farmer.mobileNo,
                       let aadharNo = farmer.aadharNo,
                       let fdob = farmer.dob,
                       let fName = farmer.fname,
                       let fpassBookNo = farmer.passBookNo,
                       let ftotalland = farmer.totalLand,
                       let fcottonland = farmer.noOfAcr,
                       let ftc = farmer.tc,
                       let fhd = farmer.hd,
                       let fdc = farmer.dc,
                       let fcs = farmer.cs
                    {
                        farmerName = fullname
                        address = faddress
                        mobileNumber = mobileNo
                        aadharNumber = aadharNo
                        let formatter = DateFormatter()
                        formatter.dateFormat = "yyyy-MM-dd" // match the format of fdob
                        if let parsedDate = formatter.date(from: fdob) {
                            dob = parsedDate
                        }
                        fatherName = fName
                        passbookNumber = fpassBookNo
                        totalLand = String(ftotalland)
                        cottonLand = String(fcottonland)
                        traditionalLand = String(ftc)
                        desiCottonLand = String(fdc)
                        hdpsLand = String(fhd)
                        closerSpacingLand = String(fcs)
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .preferredColorScheme(.light)
    }
    
    // MARK: - Fetching Unique Names
    private func loadUniqueNames() {
        if let token = SessionManager.shared.authToken,
           let stateId = selectedState?.id {
            
            ApiService.shared.getUniqueNames(token: token, stateId: stateId) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let list):
                        if let first = list.first {
                            self.uniqueNames = first
                        } else {
                            // No data → reset uniqueNames
                            self.uniqueNames = UniqueNames(
                                uniQ_ID_1_NAMING: "",
                                uniQ_ID_2_NAMING: "",
                                uniQ_ID_3_NAMING: "",
                                uniQ_ID_4_NAMING: ""
                            )
                        }
                        
                        // Always reset stored text values
                        self.text1 = ""
                        self.text2 = ""
                        self.text3 = ""
                        self.text4 = ""
                        
                    case .failure(let error):
                        print("Error fetching unique names: \(error)")
                        
                        // Reset uniqueNames on error also
                        self.uniqueNames = UniqueNames(
                            uniQ_ID_1_NAMING: "",
                            uniQ_ID_2_NAMING: "",
                            uniQ_ID_3_NAMING: "",
                            uniQ_ID_4_NAMING: ""
                        )
                        
                        self.text1 = ""
                        self.text2 = ""
                        self.text3 = ""
                        self.text4 = ""
                    }
                }
            }
        }
    }
    
    // MARK: - FarmerTypes
    private func loadFarmerTypes(){
        if let token = SessionManager.shared.authToken{
            ApiService.shared.getFarmerTypes(token: token) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.farmerTypes = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedFarmerType = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
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
    
    // MARK: - Mandals
    private func loadMandals(){
        if let token = SessionManager.shared.authToken,
           let districtId = selectedDistrict?.id {
            ApiService.shared.getMandals(token: token, districtId: districtId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.mandals = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedMandal = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Villages
    private func loadVillages(){
        if let token = SessionManager.shared.authToken,
           let mandalId = selectedMandal?.id {
            ApiService.shared.getVillages(token: token, mandalId: mandalId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.villages = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedVillage = first  // Default first
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
    
    // MARK: - Category/Caste
    private func loadCategories(){
        if let token = SessionManager.shared.authToken{
            ApiService.shared.getCastes(token: token) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.categories = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedCategory = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Salutations
    private func loadTitles() {
        if let token = SessionManager.shared.authToken{
            ApiService.shared.getSalutations(token: token) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.titles = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedTitle = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Genders
    private func loadGenders(){
        if let token =  SessionManager.shared.authToken{
            ApiService.shared.getGenders(token: token){
                result in DispatchQueue.main.async{
                    switch result {
                    case .success(let titlesResponse):
                        self.genders = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedGender = first
                        }
                    case .failure(let error):
                        print("Error fetching genders: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Validation
    private func validateForm() -> Bool {
        validationTitle = "Validation Error"
        if selectedTitle == nil || selectedTitle?.id == 0{
            validationMessage = "Please select a Title"
            return false
        }
        if farmerName.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter Farmer Name"
            return false
        }
        if fatherName.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter Father's Name"
            return false
        }
        if selectedGender == nil || selectedGender?.id == 0 {
            validationMessage = "Please select Gender"
            return false
        }
        // ✅ DOB validation
        let calendar = Calendar.current
        let today = Date()
        
        // Ensure DOB is not default and age >= 1 year
        if dob == Date() {
            validationMessage = "Please select Date of Birth"
            return false
        }
        
        if let age = calendar.dateComponents([.year], from: dob, to: today).year {
            if age < 1 {
                validationMessage = "Farmer must be at least 1 year old"
                return false
            }
        }
        
        if(selectedCategory == nil || selectedCategory?.id == 0){
            validationMessage = "Please select Caste"
            return false
        }
        
        if aadharNumber.count != 12 {
            validationMessage = "Aadhar number must be 12 digits"
            return false
        }
        if mobileNumber.count != 10 {
            validationMessage = "Mobile number must be 10 digits"
            return false
        }
        if address.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter Address"
            return false
        }
        if selectedState == nil || selectedState?.id == 0 {
            validationMessage = "Please select State"
            return false
        }
        if selectedDistrict == nil || selectedDistrict?.id == 0 {
            validationMessage = "Please select District"
            return false
        }
        if selectedMandal == nil || selectedMandal?.id == 0 {
            validationMessage = "Please select Mandal"
            return false
        }
        if selectedVillage == nil || selectedVillage?.id == 0 {
            validationMessage = "Please select Village"
            return false
        }
        if selectedMarket == nil || selectedMarket?.id == 0 {
            validationMessage = "Please select Market"
            return false
        }
        if selectedFarmerType == nil {
            validationMessage = "Please select Farmer Type"
            return false
        }
        
        // ✅ Land values
        if totalLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter Total Land"
            return false
        }
        if cottonLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter Cotton Land"
            return false
        }
        
        // ✅ Unique Names validation
        if let uniqueNames = uniqueNames {
            var hasUniqueNames = false
            
            if let name = uniqueNames.uniQ_ID_1_NAMING, !name.isEmpty {
                hasUniqueNames = true
                if text1.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter \(name)"
                    return false
                }
            }
            
            if let name = uniqueNames.uniQ_ID_2_NAMING, !name.isEmpty {
                hasUniqueNames = true
                if text2.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter \(name)"
                    return false
                }
            }
            
            if let name = uniqueNames.uniQ_ID_3_NAMING, !name.isEmpty {
                hasUniqueNames = true
                if text3.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter \(name)"
                    return false
                }
            }
            
            if let name = uniqueNames.uniQ_ID_4_NAMING, !name.isEmpty {
                hasUniqueNames = true
                if text4.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter \(name)"
                    return false
                }
            }
            
            // ✅ Else case: if no unique names are present → validate passbookNumber
            if !hasUniqueNames {
                if passbookNumber.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter Passbook No / Khatha No"
                    return false
                }
            }
        }
        
        // ✅ Crop Types validation
        if !(isTraditional || isHDPS || isDesiCotton || isCloserSpacing) {
            validationMessage = "Please select at least one Crop Type"
            return false
        }
        if isTraditional && traditionalLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter land for Traditional Crop"
            return false
        }
        if isHDPS && hdpsLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter land for HDPS"
            return false
        }
        if isDesiCotton && desiCottonLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter land for Desi Cotton"
            return false
        }
        if isCloserSpacing && closerSpacingLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter land for Closer Spacing"
            return false
        }
        // ✅ Cotton Land total check
        let cottonValue = Double(cottonLand) ?? 0
        let traditionalValue = isTraditional ? (Double(traditionalLand) ?? 0) : 0
        let hdpsValue = isHDPS ? (Double(hdpsLand) ?? 0) : 0
        let desiCottonValue = isDesiCotton ? (Double(desiCottonLand) ?? 0) : 0
        let closerSpacingValue = isCloserSpacing ? (Double(closerSpacingLand) ?? 0) : 0
        
        let totalCropValue = traditionalValue + hdpsValue + desiCottonValue + closerSpacingValue
        
        if cottonValue != totalCropValue {
            validationMessage = "Cotton Land must equal the sum of selected crop lands (\(totalCropValue))"
            return false
        }
        
        // ✅ Images validation
        if selectedImages.count != 2 {
            validationMessage = "Please upload Farmer photo and Aadhar card photo"
            return false
        }
        
        // ✅ Documents validation
        if selectedDocuments.isEmpty {
            validationMessage = "Please upload at least 1 document"
            return false
        }
        
        return true
    }
    
    private func submitRegistration() {
        let request = FarmerRegistrationRequest(
            Flag: 1,
            Id: 0,
            Barcode: "0",
            FarmerType: Int64(selectedFarmerType?.id ?? 0),
            SalutationID: selectedTitle?.id ?? 0,
            GenderID: selectedGender?.id ?? 0,
            FarmerFullname: farmerName,
            Fname: fatherName,
            PassBookNo: passbookNumber.isEmpty ? nil : passbookNumber,
            Fk_District: Int64(selectedDistrict?.id ?? 0),
            Fk_Mandal: Int64(selectedMandal?.id ?? 0),
            Fk_Village: Int64(selectedVillage?.id ?? 0),
            AadharNo: aadharNumber,
            MobileNo: mobileNumber,
            TotalLand: Double(totalLand) ?? 0,
            NoOfAcr: Double(cottonLand) ?? 0,
            MarketId: Int64(selectedMarket?.id ?? 0),
            Category: selectedCategory?.id ?? 0,
            Address: address,
            DOB: formatDate(dob),
            Uniq_1: text1.isEmpty ? nil : text1,
            Uniq_2: text2.isEmpty ? nil : text2,
            Uniq_3: text3.isEmpty ? nil : text3,
            Uniq_4: text4.isEmpty ? nil : text4,
            tc: isTraditional ? Double(traditionalLand) : nil,
            hd: isHDPS ? Double(hdpsLand) : nil,
            dc: isDesiCotton ? Double(desiCottonLand) : nil,
            cs: isCloserSpacing ? Double(closerSpacingLand) : nil,
            MeasureType: selectedMeasureType == "Acres" ? 0 : 1
        )
        
        guard let token = SessionManager.shared.authToken else {
            showToast = true
            toastMessage = "Authentication token missing"
            return
        }
        
        ApiService.shared.registerFarmer(token: token, request: request) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let response):
                    if let firstResponse = response.first {
                        
                        // Ensure we have selected images/documents
                        guard !selectedImages.isEmpty || !selectedDocuments.isEmpty else {
                            showValidationAlert = true
                            validationTitle = "Registration Successful!"
                            validationMessage = "Registration successful with BarCode: \(firstResponse.Barcode ?? "N/A")!"
                            return
                        }
                        
                        // Convert images to FarmerDocsRequest objects
                        var docsRequests: [FarmerDocsRequest] = []
                        
                        for image in selectedImages {
                            if let imageData = image.jpegData(compressionQuality: 0.8) {
                                let base64String = imageData.base64EncodedString()
                                let docRequest = FarmerDocsRequest(
                                    farmerID: Decimal(firstResponse.Pk_FarmerID ?? 0),
                                    typeID: 1, // Adjust TypeID if needed
                                    proof: base64String,
                                    type: "Image"
                                )
                                docsRequests.append(docRequest)
                            }
                        }
                        
                        // Convert documents from URLs to Base64
                        for docURL in selectedDocuments {
                            if let data = try? Data(contentsOf: docURL) {
                                let base64String = data.base64EncodedString()
                                let docRequest = FarmerDocsRequest(
                                    farmerID: Decimal(firstResponse.Pk_FarmerID ?? 0),
                                    typeID: 2, // Adjust TypeID if needed
                                    proof: base64String,
                                    type: "Document"
                                )
                                docsRequests.append(docRequest)
                            }
                        }
                        
                        // Upload all docs sequentially
                        func uploadNext(index: Int) {
                            guard index < docsRequests.count else {
                                // All uploads completed
                                showValidationAlert = true
                                validationTitle = "Registration Successful!"
                                validationMessage = "Registration successful with BarCode: \(firstResponse.Barcode ?? "N/A")!"
                                return
                            }
                            
                            ApiService.shared.uploadFarmerDocs(token: token, request: docsRequests[index]) { result in
                                DispatchQueue.main.async {
                                    switch result {
                                    case .success(_):
                                        // Upload next document
                                        uploadNext(index: index + 1)
                                    case .failure(let error):
                                        showToast = true
                                        toastMessage = "Document upload failed: \(error.localizedDescription)"
                                    }
                                }
                            }
                        }
                        
                        uploadNext(index: 0)
                        
                    } else {
                        showToast = true
                        toastMessage = "Registration failed: Empty response"
                    }
                case .failure(let error):
                    showToast = true
                    let nsError = error as NSError
                    
                    if let responseJson = nsError.userInfo["ResponseJSON"] as? String {
                        if let jsonData = responseJson.data(using: .utf8),
                           let jsonObject = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
                            
                            if let errorMessage = jsonObject["message"] as? String {
                                toastMessage = "Registration failed: \(errorMessage)"
                            } else if let errorMessage = jsonObject["error"] as? String {
                                toastMessage = "Registration failed: \(errorMessage)"
                            } else if let errors = jsonObject["errors"] as? [String: Any] {
                                if let firstError = errors.values.first as? [String],
                                   let firstErrorMessage = firstError.first {
                                    toastMessage = "Registration failed: \(firstErrorMessage)"
                                } else if let firstError = errors.values.first as? String {
                                    toastMessage = "Registration failed: \(firstError)"
                                } else {
                                    toastMessage = "Registration failed: \(responseJson)"
                                }
                            } else {
                                toastMessage = "Registration failed: \(responseJson)"
                            }
                        } else {
                            toastMessage = "Registration failed: \(responseJson)"
                        }
                    } else {
                        toastMessage = "Registration failed: \(error.localizedDescription)"
                    }
                }
            }
        }
    }
    
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }
}

// MARK: - ImagePicker with Camera/Gallery support + 1MB limit for Gallery + Max 2 Images
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImages: [UIImage]
    @Binding var showToast: Bool
    @Binding var toastMessage: String
    @Environment(\.presentationMode) var presentationMode
    
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        
        // Check if the sourceType is available
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            picker.sourceType = sourceType
        } else {
            // Fallback to photo library if camera is not available
            picker.sourceType = .photoLibrary
            DispatchQueue.main.async {
                self.showToast = true
                self.toastMessage = "Camera is not available on this device"
            }
        }
        
        // For iPad, set popover style for photo library
        if UIDevice.current.userInterfaceIdiom == .pad && picker.sourceType == .photoLibrary {
            picker.modalPresentationStyle = .popover
            picker.popoverPresentationController?.sourceView = UIView()
        }
        
        picker.allowsEditing = false
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            DispatchQueue.main.async {
                guard self.parent.selectedImages.count < 2 else {
                    self.parent.showToast = true
                    self.parent.toastMessage = "You can only select up to 2 images."
                    self.parent.presentationMode.wrappedValue.dismiss()
                    return
                }
                
                if let image = info[.originalImage] as? UIImage {
                    if picker.sourceType == .photoLibrary {
                        // Compress image under 1 MB
                        var compression: CGFloat = 1.0
                        var imageData = image.jpegData(compressionQuality: compression)
                        
                        while let data = imageData, data.count > 1_048_576 && compression > 0.1 {
                            compression -= 0.1
                            imageData = image.jpegData(compressionQuality: compression)
                        }
                        
                        if let finalData = imageData, let finalImage = UIImage(data: finalData) {
                            self.parent.selectedImages.append(finalImage)
                        } else {
                            self.parent.showToast = true
                            self.parent.toastMessage = "Please select an image smaller than 1 MB."
                        }
                    } else {
                        // Camera images → no restriction
                        self.parent.selectedImages.append(image)
                    }
                }
                self.parent.presentationMode.wrappedValue.dismiss()
            }
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            DispatchQueue.main.async {
                self.parent.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
