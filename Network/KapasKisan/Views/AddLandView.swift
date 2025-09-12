import SwiftUI

// MARK: - Add land view localizer

class AddLandLocalizer {
    static func t(_ key: String) -> String {
        let lang = SessionManager.shared.selectedLanguage ?? "English"
        return translations[lang]?[key] ?? translations["English"]?[key] ?? key
    }
    private static let translations: [String: [String: String]] = [
        "English": [
            "add_land": "Add Land",
            "land_details": "Land Details",
            "select_state": "Select State",
            "select_district": "Select District",
            "select_mandal_block": "Select Mandal/Block",
            "select_village": "Select Village",
            "select_market": "Select Market",
            "select_measure_type": "Select Measure Type",
            "passbook_no": "Passbook No / Khatha No",
            "total_land": "Total Land",
            "cotton_land": "Cotton Land",
            "select_crop_type": "Select Crop Type",
            "traditional_crop": "Traditional Crop",
            "hdps": "HDPS",
            "desi_cotton": "Desi Cotton",
            "closer_spacing": "Closer Spacing",
            "crop_land_acres": "Crop Land (Acres)",
            "upload_land_documents": "Upload Land Documents (PDF Only)",
            "add_land_button": "Add Land",
            "validation_error": "Validation Error",
            "land_added": "Land Added!",
            "land_added_msg": "Land successfully added.",
            "ok": "OK",
            "valid_state": "Please select State",
            "valid_district": "Please select District",
            "valid_mandal": "Please select Mandal",
            "valid_village": "Please select Village",
            "valid_market": "Please select Market",
            "enter_total_land": "Please enter Total Land",
            "enter_cotton_land": "Please enter Cotton Land",
            "enter_passbook": "Please enter Passbook No / Khatha No",
            "select_crop": "Please select at least one Crop Type",
            "enter_traditional_land": "Please enter land for Traditional Crop",
            "enter_hdps_land": "Please enter land for HDPS",
            "enter_desi_cotton_land": "Please enter land for Desi Cotton",
            "enter_closer_spacing_land": "Please enter land for Closer Spacing",
            "cotton_land_sum": "Cotton Land must equal the sum of selected crop lands",
            "upload_documents": "Please upload at least 1 document"
        ],
        "Telugu": [
            "add_land": "భూమిని జోడించండి",
            "land_details": "భూమి వివరాలు",
            "select_state": "రాష్ట్రాన్ని ఎంచుకోండి",
            "select_district": "జిల్లాను ఎంచుకోండి",
            "select_mandal_block": "మండలం/బ్లాక్ ఎంచుకోండి",
            "select_village": "గ్రామాన్ని ఎంచుకోండి",
            "select_market": "మార్కెట్‌ను ఎంచుకోండి",
            "select_measure_type": "కొలత రకాన్ని ఎంచుకోండి",
            "passbook_no": "పాస్‌బుక్ నంబర్ / ఖతా నంబర్",
            "total_land": "మొత్తం భూమి",
            "cotton_land": "పత్తి భూమి",
            "select_crop_type": "పంట రకాన్ని ఎంచుకోండి",
            "traditional_crop": "సాంప్రదాయ పంట",
            "hdps": "HDPS",
            "desi_cotton": "దేశీ పత్తి",
            "closer_spacing": "క్లోజర్ స్పేసింగ్",
            "crop_land_acres": "పంట భూమి (ఎకరాలు)",
            "upload_land_documents": "భూమి డాక్యుమెంట్స్ అప్‌లోడ్ చేయండి (PDF మాత్రమే)",
            "add_land_button": "భూమిని జోడించండి",
            "validation_error": "ధృవీకరణ లోపం",
            "land_added": "భూమి జోడించబడింది!",
            "land_added_msg": "భూమి విజయవంతంగా జోడించబడింది.",
            "ok": "సరే",
            "valid_state": "దయచేసి రాష్ట్రాన్ని ఎంచుకోండి",
            "valid_district": "దయచేసి జిల్లాను ఎంచుకోండి",
            "valid_mandal": "దయచేసి మండలాన్ని ఎంచుకోండి",
            "valid_village": "దయచేసి గ్రామాన్ని ఎంచుకోండి",
            "valid_market": "దయచేసి మార్కెట్‌ను ఎంచుకోండి",
            "enter_total_land": "దయచేసి మొత్తం భూమిని నమోదు చేయండి",
            "enter_cotton_land": "దయచేసి పత్తి భూమిని నमోదు చేయండి",
            "enter_passbook": "దయచేసి పాస్‌బుక్ నంబర్ / ఖతా నంబర్ నమోదు చేయండి",
            "select_crop": "దయచేసి కనీసం ఒక పంట రకాన్ని ఎంచుకోండి",
            "enter_traditional_land": "దయచేసి సాంప్రదాయ పంటకు భూమిని నమోదు చేయండి",
            "enter_hdps_land": "దయచేసి HDPSకు భూమిని నమోదు చేయండి",
            "enter_desi_cotton_land": "దయచేసి దేశీ పత్తికి భూమిని నమోదు చేయండి",
            "enter_closer_spacing_land": "దయచేసి క్లోజర్ స్పేసింగ్‌కు భూమిని నమోదు చేయండి",
            "cotton_land_sum": "పత్తి భూమి ఎంచుకున్న పంట భూముల మొత్తానికి సమానంగా ఉండాలి",
            "upload_documents": "దయచేసి కనీసం 1 డాక్యుమెంట్‌ను అప్‌లోడ్ చేయండి"
        ],
        "Hindi": [
            "add_land": "जमीन जोड़ें",
            "land_details": "जमीन का विवरण",
            "select_state": "राज्य चुनें",
            "select_district": "जिला चुनें",
            "select_mandal_block": "मंडल/ब्लॉक चुनें",
            "select_village": "गाँव चुनें",
            "select_market": "मार्केट चुनें",
            "select_measure_type": "माप प्रकार चुनें",
            "passbook_no": "पासबुक नंबर / खाता नंबर",
            "total_land": "कुल जमीन",
            "cotton_land": "कपास जमीन",
            "select_crop_type": "फसल प्रकार चुनें",
            "traditional_crop": "पारंपरिक फसल",
            "hdps": "HDPS",
            "desi_cotton": "देसी कपास",
            "closer_spacing": "क्लोजर स्पेसिंग",
            "crop_land_acres": "फसल जमीन (एकड़)",
            "upload_land_documents": "जमीन के दस्तावेज अपलोड करें (केवल PDF)",
            "add_land_button": "जमीन जोड़ें",
            "validation_error": "मान्यकरण त्रुटि",
            "land_added": "जमीन जोड़ी गई!",
            "land_added_msg": "जमीन सफलतापूर्वक जोड़ी गई।",
            "ok": "ठीक है",
            "valid_state": "कृपया राज्य चुनें",
            "valid_district": "कृपया जिला चुनें",
            "valid_mandal": "कृपया मंडल चुनें",
            "valid_village": "कृपया गाँव चुनें",
            "valid_market": "कृपया मार्केट चुनें",
            "enter_total_land": "कृपया कुल जमीन दर्ज करें",
            "enter_cotton_land": "कृपया कपास जमीन दर्ज करें",
            "enter_passbook": "कृपया पासबुक नंबर / खाता नंबर दर्ज करें",
            "select_crop": "कृपया कम से कम एक फसल प्रकार चुनें",
            "enter_traditional_land": "कृपया पारंपरिक फसल के लिए जमीन दर्ज करें",
            "enter_hdps_land": "कृपया HDPS के लिए जमीन दर्ज करें",
            "enter_desi_cotton_land": "कृपया देसी कपास के लिए जमीन दर्ज करें",
            "enter_closer_spacing_land": "कृपया क्लोजर स्पेसिंग के लिए जमीन दर्ज करें",
            "cotton_land_sum": "कपास जमीन चयनित फसल जमीनों के योग के बराबर होनी चाहिए",
            "upload_documents": "कृपया कम से कम 1 दस्तावेज अपलोड करें"
        ],
        "Kannada": [
            "add_land": "ಭೂಮಿಯನ್ನು ಸೇರಿಸಿ",
            "land_details": "ಭೂಮಿಯ ವಿವರಗಳು",
            "select_state": "ರಾಜ್ಯವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_district": "ಜಿಲ್ಲೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_mandal_block": "ಮಂಡಲ/ಬ್ಲಾಕ್ ಆಯ್ಕೆಮಾಡಿ",
            "select_village": "ಗ್ರಾಮವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "select_market": "ಮಾರ್ಕೆಟ್ ಆಯ್ಕೆಮಾಡಿ",
            "select_measure_type": "ಮಾಪನ ಪ್ರಕಾರವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "passbook_no": "ಪಾಸ್ಬುಕ್ ನಂಬರ್ / ಖತಾ ನಂಬರ್",
            "total_land": "ಒಟ್ಟು ಭೂಮಿ",
            "cotton_land": "ಹತ್ತಿ ಭೂಮಿ",
            "select_crop_type": "ಬೆಳೆ ಪ್ರಕಾರವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "traditional_crop": "ಸಾಂಪ್ರದಾಯಿಕ ಬೆಳೆ",
            "hdps": "HDPS",
            "desi_cotton": "ದೇಶಿ ಹತ್ತಿ",
            "closer_spacing": "ಕ್ಲೋಸರ್ ಸ್ಪೇಸಿಂಗ್",
            "crop_land_acres": "ಬೆಳೆ ಭೂಮಿ (ಎಕರೆ)",
            "upload_land_documents": "ಭೂಮಿ ದಾಖಲೆಗಳನ್ನು ಅಪ್‌ಲೋಡ್ ಮಾಡಿ (PDF ಮಾತ್ರ)",
            "add_land_button": "ಭೂಮಿಯನ್ನು ಸೇರಿಸಿ",
            "validation_error": "ಮೌಲ್ಯಮಾಪನ ದೋಷ",
            "land_added": "ಭೂಮಿ ಸೇರಿಸಲಾಗಿದೆ!",
            "land_added_msg": "ಭೂಮಿ ಯಶಸ್ವಿಯಾಗಿ ಸೇರಿಸಲಾಗಿದೆ.",
            "ok": "ಸರಿ",
            "valid_state": "ದಯವಿಟ್ಟು ರಾಜ್ಯವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "valid_district": "ದಯವಿಟ್ಟು ಜಿಲ್ಲೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "valid_mandal": "ದಯವಿಟ್ಟು ಮಂಡಲವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "valid_village": "ದಯವಿಟ್ಟು ಗ್ರಾಮವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "valid_market": "ದಯವಿಟ್ಟು ಮಾರ್ಕೆಟ್ ಆಯ್ಕೆಮಾಡಿ",
            "enter_total_land": "ದಯವಿಟ್ಟು ಒಟ್ಟು ಭೂಮಿಯನ್ನು ನಮೂದಿಸಿ",
            "enter_cotton_land": "ದಯವಿಟ್ಟು ಹತ್ತಿ ಭೂಮಿಯನ್ನು ನಮೂದಿಸಿ",
            "enter_passbook": "ದಯವಿಟ್ಟು ಪಾಸ್ಬುಕ್ ನಂಬರ್ / ಖತಾ ನಂಬರ್ ನಮೂದಿಸಿ",
            "select_crop": "ದಯವಿಟ್ಟು ಕನಿಷ್ಠ ಒಂದು ಬೆಳೆ ಪ್ರಕಾರವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
            "enter_traditional_land": "ದಯವಿಟ್ಟು ಸಾಂಪ್ರದಾಯಿಕ ಬೆಳೆಗೆ ಭೂಮಿಯನ್ನು ನಮೂದಿಸಿ",
            "enter_hdps_land": "ದಯವಿಟ್ಟು HDPSಗೆ ಭೂಮಿಯನ್ನು ನಮೂದಿಸಿ",
            "enter_desi_cotton_land": "ದಯವಿಟ್ಟು ದೇಶಿ ಹತ್ತಿಗೆ ಭೂಮಿಯನ್ನು ನಮೂದಿಸಿ",
            "enter_closer_spacing_land": "ದಯವಿಟ್ಟು ಕ್ಲೋಸर್ ಸ್ಪೇಸಿಂಗ್‌ಗೆ ಭೂಮಿಯನ್ನು ನಮೂದಿಸಿ",
            "cotton_land_sum": "ಹತ್ತಿ ಭೂಮಿ ಆಯ್ಕೆ ಮಾಡಿದ ಬೆಳೆ ಭೂಮಿಗಳ ಮೊತ್ತಕ್ಕೆ ಸಮನಾಗಿರಬೇಕು",
            "upload_documents": "ದಯವಿಟ್ಟು ಕನಿಷ್ಠ 1 ದಾಖಲೆಯನ್ನು ಅಪ್‌ಲೋಡ್ ಮಾಡಿ"
        ],
        "Tamil": [
            "add_land": "நிலத்தைச் சேர்க்கவும்",
            "land_details": "நில விவரங்கள்",
            "select_state": "மாநிலத்தைத் தேர்ந்தெடுக்கவும்",
            "select_district": "மாவட்டத்தைத் தேர்ந்தெடுக்கவும்",
            "select_mandal_block": "மண்டலம்/பிளாக் தேர்ந்தெடுக்கவும்",
            "select_village": "கிராமத்தைத் தேர்ந்தெடுக்கவும்",
            "select_market": "சந்தையைத் தேர்ந்தெடுக்கவும்",
            "select_measure_type": "அளவு வகையைத் தேர்ந்தெடுக்கவும்",
            "passbook_no": "பாஸ்புக் எண் / கணக்கு எண்",
            "total_land": "மொத்த நிலம்",
            "cotton_land": "பருத்தி நிலம்",
            "select_crop_type": "பயிர் வகையைத் தேர்ந்தெடுக்கவும்",
            "traditional_crop": "பாரம்பரிய பயிர்",
            "hdps": "எச்டிபிஎஸ்",
            "desi_cotton": "தேசி பருத்தி",
            "closer_spacing": "நெருக்கமான இடைவெளி",
            "crop_land_acres": "பயிர் நிலம் (ஏக்கர்)",
            "upload_land_documents": "நில ஆவணங்களை பதிவேற்றவும் (PDF மட்டும்)",
            "add_land_button": "நிலத்தைச் சேர்க்கவும்",
            "validation_error": "சரிபார்ப்பு பிழை",
            "land_added": "நிலம் சேர்க்கப்பட்டது!",
            "land_added_msg": "நிலம் வெற்றிகரமாக சேர்க்கப்பட்டது.",
            "ok": "சரி",
            "valid_state": "தயவுசெய்து மாநிலத்தைத் தேர்ந்தெடுக்கவும்",
            "valid_district": "தயவுசெய்து மாவட்டத்தைத் தேர்ந்தெடுக்கவும்",
            "valid_mandal": "தயவுசெய்து மண்டலத்தைத் தேர்ந்தெடுக்கவும்",
            "valid_village": "தயவுசெய்து கிராமத்தைத் தேர்ந்தெடுக்கவும்",
            "valid_market": "தயவுசெய்து சந்தையைத் தேர்ந்தெடுக்கவும்",
            "enter_total_land": "தயவுசெய்து மொத்த நிலத்தை உள்ளிடவும்",
            "enter_cotton_land": "தயவுசெய்து பருத்தி நிலத்தை உள்ளிடவும்",
            "enter_passbook": "தயவுசெய்து பாஸ்புக் எண் / கணக்கு எண் உள்ளிடவும்",
            "select_crop": "தயவுசெய்து குறைந்தது ஒரு பயிர் வகையைத் தேர்ந்தெடுக்கவும்",
            "enter_traditional_land": "தயவுசெய்து பாரம்பரிய பயிருக்கான நிலத்தை உள்ளிடவும்",
            "enter_hdps_land": "தயவுசெய்து எச்டிபிஎஸ்க்கான நிலத்தை உள்ளிடவும்",
            "enter_desi_cotton_land": "தயவுசெய்து தேசி பருத்திக்கான நிலத்தை உள்ளிடவும்",
            "enter_closer_spacing_land": "தயவுசெய்து நெருக்கமான இடைவெளிக்கான நிலத்தை உள்ளிடவும்",
            "cotton_land_sum": "பருத்தி நிலம் தேர்ந்தெடுக்கப்பட்ட பயிர் நிலத்தின் மொத்தத்திற்கு சமமாக இருக்க வேண்டும்",
            "upload_documents": "தயவுசெய்து குறைந்தது 1 ஆவணத்தை பதிவேற்றவும்"
        ],
        "Bengali": [
            "add_land": "জমি যোগ করুন",
            "land_details": "জমির বিবরণ",
            "select_state": "রাজ্য নির্বাচন করুন",
            "select_district": "জেলা নির্বাচন করুন",
            "select_mandal_block": "মণ্ডল/ব্লক নির্বাচন করুন",
            "select_village": "গ্রাম নির্বাচন করুন",
            "select_market": "বাজার নির্বাচন করুন",
            "select_measure_type": "পরিমাপ প্রকার নির্বাচন করুন",
            "passbook_no": "পাসবুক নং / খাতা নং",
            "total_land": "মোট জমি",
            "cotton_land": "কাপাস জমি",
            "select_crop_type": "ফসলের ধরন নির্বাচন করুন",
            "traditional_crop": "ঐতিহ্যবাহী ফসল",
            "hdps": "এইচডিপিএস",
            "desi_cotton": "দেশি কাপাস",
            "closer_spacing": "ক্লোজার স্পেসিং",
            "crop_land_acres": "ফসলের জমি (একর)",
            "upload_land_documents": "জমির নথি আপলোড করুন (শুধুমাত্র PDF)",
            "add_land_button": "জমি যোগ করুন",
            "validation_error": "যাচাইকরণ ত্রুটি",
            "land_added": "জমি যোগ করা হয়েছে!",
            "land_added_msg": "জমি সফলভাবে যোগ করা হয়েছে।",
            "ok": "ঠিক আছে",
            "valid_state": "দয়া করে রাজ্য নির্বাচন করুন",
            "valid_district": "দয়া করে জেলা নির্বাচন করুন",
            "valid_mandal": "দয়া করে মণ্ডল নির্বাচন করুন",
            "valid_village": "দয়া করে গ্রাম নির্বাচন করুন",
            "valid_market": "দয়া করে বাজার নির্বাচন করুন",
            "enter_total_land": "দয়া করে মোট জমি লিখুন",
            "enter_cotton_land": "দয়া করে কাপাস জমি লিখুন",
            "enter_passbook": "দয়া করে পাসবুক নং / খাতা নং লিখুন",
            "select_crop": "দয়া করে অন্তত একটি ফসলের ধরন নির্বাচন করুন",
            "enter_traditional_land": "দয়া করে ঐতিহ্যবাহী ফসলের জন্য জমি লিখুন",
            "enter_hdps_land": "দয়া করে এইচডিপিএস-এর জন্য জমি লিখুন",
            "enter_desi_cotton_land": "দয়া করে দেশি কাপাসের জন্য জমি লিখুন",
            "enter_closer_spacing_land": "দয়া করে ক্লোজার স্পেসিং-এর জন্য জমি লিখুন",
            "cotton_land_sum": "কাপাস জমি নির্বাচিত ফসল জমির যোগফলের সমান হতে হবে",
            "upload_documents": "দয়া করে অন্তত 1টি নথি আপলোড করুন"
        ],
        "Gujarati": [
            "add_land": "જમીન ઉમેરો",
            "land_details": "જમીનની વિગતો",
            "select_state": "રાજ્ય પસંદ કરો",
            "select_district": "જિલ્લો પસંદ કરો",
            "select_mandal_block": "મંડળ/બ્લોક પસંદ કરો",
            "select_village": "ગામ પસંદ કરો",
            "select_market": "બજાર પસંદ કરો",
            "select_measure_type": "માપનો પ્રકાર પસંદ કરો",
            "passbook_no": "પાસબુક ક્ર / ખાતા ક્ર",
            "total_land": "કુલ જમીન",
            "cotton_land": "કપાસની જમીન",
            "select_crop_type": "પાકનો પ્રકાર પસંદ કરો",
            "traditional_crop": "પરંપરાગત પાક",
            "hdps": "એચડીપીએસ",
            "desi_cotton": "દેશી કપાસ",
            "closer_spacing": "ક્લોઝર સ્પેસિંગ",
            "crop_land_acres": "પાકની જમીન (એકર)",
            "upload_land_documents": "જમીન દસ્તાવેજો અપલોડ કરો (ફક્ત PDF)",
            "add_land_button": "જમીન ઉમેરો",
            "validation_error": "માન્યતા ભૂલ",
            "land_added": "જમીન ઉમેરાઈ ગઈ!",
            "land_added_msg": "જમીન સફળતાપૂર્વક ઉમેરાઈ ગઈ છે.",
            "ok": "બરાબર",
            "valid_state": "કૃપા કરીને રાજ્ય પસંદ કરો",
            "valid_district": "કૃપા કરીને જિલ્લો પસંદ કરો",
            "valid_mandal": "કૃપા કરીને મંડળ પસંદ કરો",
            "valid_village": "કૃપા કરીને ગામ પસંદ કરો",
            "valid_market": "કૃપા કરીને બજાર પસંદ કરો",
            "enter_total_land": "કૃપા કરીને કુલ જમીન દાખલ કરો",
            "enter_cotton_land": "કૃપા કરીને કપાસની જમીન દાખલ કરો",
            "enter_passbook": "કૃપા કરીને પાસબુક ક્ર / ખાતા ક્ર દાખલ કરો",
            "select_crop": "કૃપા કરીને ઓછામાં ઓછો એક પાકનો પ્રકાર પસંદ કરો",
            "enter_traditional_land": "કૃપા કરીને પરંપરાગત પાક માટે જમીન દાખલ કરો",
            "enter_hdps_land": "કૃપા કરીને એચડીપીએસ માટે જમીન દાખલ કરો",
            "enter_desi_cotton_land": "કૃપા કરીને દેશી કપાસ માટે જમીન દાખલ કરો",
            "enter_closer_spacing_land": "કૃપા કરીને ક્લોઝર સ્પેસિંગ માટે જમીન દાખલ કરો",
            "cotton_land_sum": "કપાસની જમીન પસંદ કરેલ પાકની જમીનની કુલ બરાબર હોવી જોઈએ",
            "upload_documents": "કૃપા કરીને ઓછામાં ઓછો 1 દસ્તાવેજ અપલોડ કરો"
        ],
        "Punjabi": [
            "add_land": "ਜ਼ਮੀਨ ਸ਼ਾਮਲ ਕਰੋ",
            "land_details": "ਜ਼ਮੀਨ ਦੇ ਵੇਰਵੇ",
            "select_state": "ਰਾਜ ਚੁਣੋ",
            "select_district": "ਜ਼ਿਲ੍ਹਾ ਚੁਣੋ",
            "select_mandal_block": "ਮੰਡਲ/ਬਲਾਕ ਚੁਣੋ",
            "select_village": "ਪਿੰਡ ਚੁਣੋ",
            "select_market": "ਬਾਜ਼ਾਰ ਚੁਣੋ",
            "select_measure_type": "ਮਾਪ ਕਿਸਮ ਚੁਣੋ",
            "passbook_no": "ਪਾਸਬੁੱਕ ਨੰ / ਖਾਤਾ ਨੰ",
            "total_land": "ਕੁੱਲ ਜ਼ਮੀਨ",
            "cotton_land": "ਕਪਾਹ ਦੀ ਜ਼ਮੀਨ",
            "select_crop_type": "ਫਸਲ ਦੀ ਕਿਸਮ ਚੁਣੋ",
            "traditional_crop": "ਰਵਾਇਤੀ ਫਸਲ",
            "hdps": "ਐਚਡੀਪੀਐਸ",
            "desi_cotton": "ਦੇਸੀ ਕਪਾਹ",
            "closer_spacing": "ਕਲੋਜ਼ਰ ਸਪੇਸਿੰਗ",
            "crop_land_acres": "ਫਸਲ ਦੀ ਜ਼ਮੀਨ (ਏਕੜ)",
            "upload_land_documents": "ਜ਼ਮੀਨ ਦੇ ਦਸਤਾਵੇਜ਼ ਅਪਲੋਡ ਕਰੋ (ਸਿਰਫ਼ PDF)",
            "add_land_button": "ਜ਼ਮੀਨ ਸ਼ਾਮਲ ਕਰੋ",
            "validation_error": "ਪੁਸ਼ਟੀ ਗਲਤੀ",
            "land_added": "ਜ਼ਮੀਨ ਸ਼ਾਮਲ ਕੀਤੀ ਗਈ!",
            "land_added_msg": "ਜ਼ਮੀਨ ਸਫਲਤਾਪੂਰਵਕ ਸ਼ਾਮਲ ਕੀਤੀ ਗਈ ਹੈ।",
            "ok": "ਠੀਕ ਹੈ",
            "valid_state": "ਕਿਰਪਾ ਕਰਕੇ ਰਾਜ ਚੁਣੋ",
            "valid_district": "ਕਿਰਪਾ ਕਰਕੇ ਜ਼ਿਲ੍ਹਾ ਚੁਣੋ",
            "valid_mandal": "ਕਿਰਪਾ ਕਰਕੇ ਮੰਡਲ ਚੁਣੋ",
            "valid_village": "ਕਿਰਪਾ ਕਰਕੇ ਪਿੰਡ ਚੁਣੋ",
            "valid_market": "ਕਿਰਪਾ ਕਰਕੇ ਬਾਜ਼ਾਰ ਚੁਣੋ",
            "enter_total_land": "ਕਿਰਪਾ ਕਰਕੇ ਕੁੱਲ ਜ਼ਮੀਨ ਦਰਜ ਕਰੋ",
            "enter_cotton_land": "ਕਿਰਪਾ ਕਰਕੇ ਕਪਾਹ ਦੀ ਜ਼ਮੀਨ ਦਰਜ ਕਰੋ",
            "enter_passbook": "ਕਿਰਪਾ ਕਰਕੇ ਪਾਸਬੁੱਕ ਨੰ / ਖਾਤਾ ਨੰ ਦਰਜ ਕਰੋ",
            "select_crop": "ਕਿਰਪਾ ਕਰਕੇ ਘੱਟੋ ਘੱਟ ਇੱਕ ਫਸਲ ਦੀ ਕਿਸਮ ਚੁਣੋ",
            "enter_traditional_land": "ਕਿਰਪਾ ਕਰਕੇ ਰਵਾਇਤੀ ਫਸਲ ਲਈ ਜ਼ਮੀਨ ਦਰਜ ਕਰੋ",
            "enter_hdps_land": "ਕਿਰਪਾ ਕਰਕੇ ਐਚਡੀਪੀਐਸ ਲਈ ਜ਼ਮੀਨ ਦਰਜ ਕਰੋ",
            "enter_desi_cotton_land": "ਕਿਰਪਾ ਕਰਕੇ ਦੇਸੀ ਕਪਾਹ ਲਈ ਜ਼ਮੀਨ ਦਰਜ ਕਰੋ",
            "enter_closer_spacing_land": "ਕਿਰਪਾ ਕਰਕੇ ਕਲੋਜ਼ਰ ਸਪੇਸਿੰਗ ਲਈ ਜ਼ਮੀਨ ਦਰਜ ਕਰੋ",
            "cotton_land_sum": "ਕਪਾਹ ਦੀ ਜ਼ਮੀਨ ਚੁਣੀ ਗਈਆਂ ਫਸਲਾਂ ਦੀ ਜ਼ਮੀਨ ਦੇ ਜੋੜ ਦੇ ਬਰਾਬਰ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ",
            "upload_documents": "ਕਿਰਪਾ ਕਰਕੇ ਘੱਟੋ ਘੱਟ 1 ਦਸਤਾਵੇਜ਼ ਅਪਲੋਡ ਕਰੋ"
        ],
        "Marathi": [
            "add_land": "जमीन जोडा",
            "land_details": "जमिनीचा तपशील",
            "select_state": "राज्य निवडा",
            "select_district": "जिल्हा निवडा",
            "select_mandal_block": "मंडळ/ब्लॉक निवडा",
            "select_village": "गाव निवडा",
            "select_market": "बाजार निवडा",
            "select_measure_type": "मोजमाप प्रकार निवडा",
            "passbook_no": "पासबुक क्र / खाते क्र",
            "total_land": "एकूण जमीन",
            "cotton_land": "कापसाची जमीन",
            "select_crop_type": "पीक प्रकार निवडा",
            "traditional_crop": "पारंपरिक पीक",
            "hdps": "एचडीपीएस",
            "desi_cotton": "देशी कापूस",
            "closer_spacing": "क्लोजर स्पेसिंग",
            "crop_land_acres": "पीक जमीन (एकर)",
            "upload_land_documents": "जमिनीचे दस्तऐवज अपलोड करा (फक्त PDF)",
            "add_land_button": "जमीन जोडा",
            "validation_error": "प्रमाणीकरण त्रुटी",
            "land_added": "जमीन जोडली गेली!",
            "land_added_msg": "जमीन यशस्वीरित्या जोडली गेली.",
            "ok": "ठीक आहे",
            "valid_state": "कृपया राज्य निवडा",
            "valid_district": "कृपया जिल्हा निवडा",
            "valid_mandal": "कृपया मंडळ निवडा",
            "valid_village": "कृपया गाव निवडा",
            "valid_market": "कृपया बाजार निवडा",
            "enter_total_land": "कृपया एकूण जमीन प्रविष्ट करा",
            "enter_cotton_land": "कृपया कापसाची जमीन प्रविष्ट करा",
            "enter_passbook": "कृपया पासबुक क्र / खाते क्र प्रविष्ट करा",
            "select_crop": "कृपया किमान एक पीक प्रकार निवडा",
            "enter_traditional_land": "कृपया पारंपरिक पिकासाठी जमीन प्रविष्ट करा",
            "enter_hdps_land": "कृपया एचडीपीएससाठी जमीन प्रविष्ट करा",
            "enter_desi_cotton_land": "कृपया देशी कापसासाठी जमीन प्रविष्ट करा",
            "enter_closer_spacing_land": "कृपया क्लोजर स्पेसिंगसाठी जमीन प्रविष्ट करा",
            "cotton_land_sum": "कापसाची जमीन निवडलेल्या पिकांच्या जमिनीच्या बेरजेइतकी असावी",
            "upload_documents": "कृपया किमान 1 दस्तऐवज अपलोड करा"
        ],
        "Odia": [
            "add_land": "ଜମି ଯୋଡନ୍ତୁ",
            "land_details": "ଜମିର ବିବରଣୀ",
            "select_state": "ରାଜ୍ୟ ଚୟନ କରନ୍ତୁ",
            "select_district": "ଜିଲ୍ଲା ଚୟନ କରନ୍ତୁ",
            "select_mandal_block": "ମଣ୍ଡଳ/ବ୍ଲକ୍ ଚୟନ କରନ୍ତୁ",
            "select_village": "ଗାଁ ଚୟନ କରନ୍ତୁ",
            "select_market": "ବଜାର ଚୟନ କରନ୍ତୁ",
            "select_measure_type": "ମାପ ପ୍ରକାର ଚୟନ କରନ୍ତୁ",
            "passbook_no": "ପାସବୁକ୍ ନଂ / ଖାତା ନଂ",
            "total_land": "ମୋଟ ଜମି",
            "cotton_land": "କପାସ ଜମି",
            "select_crop_type": "ଫସଲ ପ୍ରକାର ଚୟନ କରନ୍ତୁ",
            "traditional_crop": "ପାରମ୍ପରିକ ଫସଲ",
            "hdps": "ଏଚଡିପିଏସ",
            "desi_cotton": "ଦେଶୀ କପାସ",
            "closer_spacing": "କ୍ଲୋଜର ସ୍ପେସିଂ",
            "crop_land_acres": "ଫସଲ ଜମି (ଏକର)",
            "upload_land_documents": "ଜମି ଡକ୍ୟୁମେଣ୍ଟ ଅପଲୋଡ୍ କରନ୍ତୁ (କେବଳ PDF)",
            "add_land_button": "ଜମି ଯୋଡନ୍ତୁ",
            "validation_error": "ମାନ୍ୟତା ତ୍ରୁଟି",
            "land_added": "ଜମି ଯୋଡାଯାଇଛି!",
            "land_added_msg": "ଜମି ସଫଳତାର ସହିତ ଯୋଡାଗଲା।",
            "ok": "ଠିକ୍ ଅଛି",
            "valid_state": "ଦୟାକରି ରାଜ୍ୟ ଚୟନ କରନ୍ତୁ",
            "valid_district": "ଦୟାକରି ଜିଲ୍ଲା ଚୟନ କରନ୍ତୁ",
            "valid_mandal": "ଦୟାକରି ମଣ୍ଡଳ ଚୟନ କରନ୍ତୁ",
            "valid_village": "ଦୟାକରି ଗାଁ ଚୟନ କରନ୍ତୁ",
            "valid_market": "ଦୟାକରି ବଜାର ଚୟନ କରନ୍ତୁ",
            "enter_total_land": "ଦୟାକରି ମୋଟ ଜମି ଦିଅନ୍ତୁ",
            "enter_cotton_land": "ଦୟାକରି କପାସ ଜମି ଦିଅନ୍ତୁ",
            "enter_passbook": "ଦୟାକରି ପାସବୁକ୍ ନଂ / ଖାତା ନଂ ଦିଅନ୍ତୁ",
            "select_crop": "ଦୟାକରି କମ୍ से କମ୍ 1ଟି ଫସଲ ପ୍ରକାର ଚୟନ କରନ୍ତୁ",
            "enter_traditional_land": "ଦୟାକରି ପାରମ୍ପରିକ ଫସଲ ପାଇଁ ଜମି ଦିଅନ୍ତୁ",
            "enter_hdps_land": "ଦୟାକରି ଏଚଡିପିଏସ ପାଇଁ ଜମି ଦିଅନ୍ତୁ",
            "enter_desi_cotton_land": "ଦୟାକରି ଦେଶୀ କପାସ ପାଇଁ ଜମି ଦିଅନ୍ତୁ",
            "enter_closer_spacing_land": "ଦୟାକରି କ୍ଲୋଜର ସ୍ପେସିଂ ପାଇଁ ଜମି ଦିଅନ୍ତୁ",
            "cotton_land_sum": "କପାସ ଜମି ଚୟନିତ ଫସଲ ଜମିର ଯୋଗ ସମାନ ହେବା ଉଚିତ",
            "upload_documents": "ଦୟାକରି କମ୍ से କମ୍ 1ଟି ଡକ୍ୟୁମେଣ୍ଟ ଅପଲୋଡ୍ କରନ୍ତୁ"
        ],
        
    ]
}

// MARK: - Add land view
struct AddLandView: View {
    // State variables for form fields
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
    
    @State private var showingImagePicker = false
    @State private var showingDocumentPicker = false
    @State private var selectedImages: [UIImage] = []
    @State private var selectedDocuments: [URL] = []
    @State private var gotoHome:Bool = false
    private let measureTypes = ["Acres", "Hectares"]
    
    @State private var uniqueNames: UniqueNames?
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    @State private var text4: String = ""
    
    @State private var showValidationAlert = false
    @State private var validationMessage = ""
    @State private var validationTitle = ""
    
    @State private var showToast = false
    @State private var toastMessage = ""
    
    @State private var isSubmitting = false
    
    @StateObject private var keyboard = KeyboardObserver.shared
    
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
                        
                        Text(AddLandLocalizer.t("add_land"))
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
                                    // Land Details Section
                                    Text(AddLandLocalizer.t("land_details"))
                                        .font(.system(size: 14, weight: .bold))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Text(AddLandLocalizer.t("select_state"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(AddLandLocalizer.t("select_state"), selection: $selectedState) {
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
                                    Text(AddLandLocalizer.t("select_district"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(AddLandLocalizer.t("select_district"), selection: $selectedDistrict) {
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
                                    Text(AddLandLocalizer.t("select_mandal_block"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(AddLandLocalizer.t("select_mandal_block"), selection: $selectedMandal) {
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
                                    Text(AddLandLocalizer.t("select_village"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(AddLandLocalizer.t("select_village"), selection: $selectedVillage) {
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
                                    
                                    // Market selection
                                    Text(AddLandLocalizer.t("select_market"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(AddLandLocalizer.t("select_market"), selection: $selectedMarket) {
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
                                    
                                    Text(AddLandLocalizer.t("select_measure_type"))
                                        .frame(maxWidth:.infinity, alignment:.leading)
                                        .font(.system(size: 14))
                                    
                                    Picker(AddLandLocalizer.t("select_measure_type"), selection: $selectedMeasureType) {
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
                                        
                                        TextField(AddLandLocalizer.t("passbook_no"), text: $passbookNumber)
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
                                    TextField(AddLandLocalizer.t("total_land"), text: $totalLand)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        
                                    
                                    // Cotton Land
                                    TextField(AddLandLocalizer.t("cotton_land"), text: $cottonLand)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                         
                                    
                                    Text(AddLandLocalizer.t("select_crop_type"))
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    
                                    // Traditional Crop
                                    HStack {
                                        Toggle(AddLandLocalizer.t("traditional_crop"), isOn: $isTraditional)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isTraditional) { newValue in
                                                if !newValue { traditionalLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $traditionalLand)
                                            .disabled(!isTraditional)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
                                            .frame(height: 48)
                                             
                                    }
                                    
                                    // HDPS
                                    HStack {
                                        Toggle(AddLandLocalizer.t("hdps"), isOn: $isHDPS)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isHDPS) { newValue in
                                                if !newValue { hdpsLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $hdpsLand)
                                            .disabled(!isHDPS)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
                                            .frame(height: 48)
                                            
                                    }
                                    
                                    // Desi Cotton
                                    HStack {
                                        Toggle(AddLandLocalizer.t("desi_cotton"), isOn: $isDesiCotton)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isDesiCotton) { newValue in
                                                if !newValue { desiCottonLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $desiCottonLand)
                                            .disabled(!isDesiCotton)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
                                            .frame(height: 48)
                                           
                                    }
                                    
                                    // Closer Spacing
                                    HStack {
                                        Toggle(AddLandLocalizer.t("closer_spacing"), isOn: $isCloserSpacing)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isCloserSpacing) { newValue in
                                                if !newValue { closerSpacingLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $closerSpacingLand)
                                            .disabled(!isCloserSpacing)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
                                            .frame(height: 48)
                                            
                                    }
                                }
                                
                                
                                
                                // Upload buttons
                                Group {
                                    Button(action: {
                                        showingDocumentPicker = true
                                    }) {
                                        Text(AddLandLocalizer.t("upload_land_documents"))
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
//                .overlay(
//                    Group {
//                        if keyboard.isVisible {
//                            Button("⌄") {
//                                UIApplication.shared.sendAction(
//                                    #selector(UIResponder.resignFirstResponder),
//                                    to: nil,
//                                    from: nil,
//                                    for: nil
//                                )
//                            }
//                            .padding()
//                            .frame(maxWidth: .infinity)
//                            .background(Color.gray.opacity(0.2))
//                        }
//                    },
//                    alignment: .bottom
//                )
                
                
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
                
                // Add Land button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        if validateForm() {
                            isSubmitting = true
                            AddLand()
                        } else {
                            showValidationAlert = true
                        }
                    }) {
                        Text(AddLandLocalizer.t("add_land_button"))
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
                    .alert(isPresented: $showValidationAlert) {
                        if validationTitle == "Land Added!"
                            || validationTitle == "User is inactive" {
                            return Alert(
                                title: Text(validationTitle),
                                message: Text(validationMessage),
                                dismissButton: .default(Text("OK")) {
                                    isSubmitting = false
                                    // This triggers navigation
                                    gotoHome = true
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
            .navigationBarHidden(true)
            .sheet(isPresented: $showingDocumentPicker) {
                DocumentPicker(selectedDocuments: $selectedDocuments)
            }
            .background(
                NavigationLink(destination: HomeView(), isActive: $gotoHome) {
                    EmptyView()
                }
            )
            .navigationBarBackButtonHidden(true)
        }
        .onAppear{
            loadStates()
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
    
    // MARK: - Validation
    private func validateForm() -> Bool {
        validationTitle = "Validation Error"
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
        //        if selectedImages.count != 2 {
        //            validationMessage = "Please upload Farmer photo and Aadhar card photo"
        //            return false
        //        }
        
        // ✅ Documents validation
        if selectedDocuments.isEmpty {
            validationMessage = "Please upload at least 1 document"
            return false
        }
        
        return true
    }
    
    // MARK: - Add Land Submit
    private func AddLand() {
        let landRequest = AddLandExtendedRequest(
            farmerId: SessionManager.shared.farmerDetails?.pkFarmerID ?? 0,
            totalLand: Double(totalLand) ?? 0.00,
            cottonLand: Double(cottonLand) ?? 0.00,
            marketId: selectedMarket?.id ?? 0,
            villageId: selectedVillage?.id ?? 0,
            uniqueId: passbookNumber,
            uniq1: text1.isEmpty ? nil : text1,
            uniq2: text2.isEmpty ? nil : text2,
            uniq3: text3.isEmpty ? nil : text3,
            uniq4: text4.isEmpty ? nil : text4,
            tc: isTraditional ? Double(traditionalLand) : nil,
            hd: isHDPS ? Double(hdpsLand) : nil,
            dc: isDesiCotton ? Double(desiCottonLand) : nil,
            cs: isCloserSpacing ? Double(closerSpacingLand) : nil,
            measureType: selectedMeasureType == "Acres" ? 0 : 1
        )
        
        guard let token = SessionManager.shared.authToken else {
            showToast = true
            toastMessage = "Authentication token missing"
            return
        }
        
        ApiService.shared.addLandExtended(token: token, request: landRequest) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let responseString):
                    print("AddLandExtended Success: \(responseString)")
                    
                    // Ensure we have selected images/documents
                    guard !selectedImages.isEmpty || !selectedDocuments.isEmpty else {
                        showValidationAlert = true
                        validationTitle = "Land Added!"
                        validationMessage = "Land successfully added."
                        return
                    }
                    
                    // Convert images to FarmerDocsRequest objects
                    var docsRequests: [FarmerDocsRequest] = []
                    
                    for image in selectedImages {
                        if let imageData = image.jpegData(compressionQuality: 0.8) {
                            let base64String = imageData.base64EncodedString()
                            let docRequest = FarmerDocsRequest(
                                farmerID: Decimal(landRequest.farmerId), // attach with farmerId
                                typeID: 1, // TypeID for images
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
                                farmerID: Decimal(landRequest.farmerId),
                                typeID: 2, // TypeID for docs
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
                            validationTitle = "Land Added!"
                            validationMessage = "Land successfully added and documents uploaded."
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
                    
                case .failure(let error):
                    showToast = true
                    let nsError = error as NSError
                    
                    if let responseJson = nsError.userInfo["ResponseJSON"] as? String {
                        if let jsonData = responseJson.data(using: .utf8),
                           let jsonObject = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
                            
                            if let errorMessage = jsonObject["message"] as? String {
                                toastMessage = "Add Land failed: \(errorMessage)"
                            } else if let errorMessage = jsonObject["error"] as? String {
                                toastMessage = "Add Land failed: \(errorMessage)"
                            } else if let errors = jsonObject["errors"] as? [String: Any] {
                                if let firstError = errors.values.first as? [String],
                                   let firstErrorMessage = firstError.first {
                                    toastMessage = "Add Land failed: \(firstErrorMessage)"
                                } else if let firstError = errors.values.first as? String {
                                    toastMessage = "Add Land failed: \(firstError)"
                                } else {
                                    toastMessage = "Add Land failed: \(responseJson)"
                                }
                            } else {
                                toastMessage = "Add Land failed: \(responseJson)"
                            }
                        } else {
                            toastMessage = "Add Land failed: \(responseJson)"
                        }
                    } else {
                        toastMessage = "Add Land failed: \(error.localizedDescription)"
                    }
                }
            }
        }
    }
}

// Document Picker helper view
struct DocumentPicker: UIViewControllerRepresentable {
    @Binding var selectedDocuments: [URL]
    @Environment(\.presentationMode) private var presentationMode
    
    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let picker = UIDocumentPickerViewController(forOpeningContentTypes: [.pdf], asCopy: true)
        picker.allowsMultipleSelection = true
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIDocumentPickerDelegate {
        let parent: DocumentPicker
        
        init(_ parent: DocumentPicker) {
            self.parent = parent
        }
        
        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            parent.selectedDocuments.append(contentsOf: urls)
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct AddLandView_Previews: PreviewProvider {
    static var previews: some View {
        AddLandView()
    }
}
