class SessionManager {
    static let shared = SessionManager()
    private init() {}

    var authToken: String?
    var mobileNumber: String?
    var isRegistered: Bool = false
    var barCode: String? = ""
    var farmerDetails: FarmerRegistrationResponse?
    
    func checkSession() -> Bool {
        guard let number = mobileNumber, !number.isEmpty else {
            return false
        }
        return true
    }
}
