class SessionManager {
    static let shared = SessionManager()
    private init() {}

    var authToken: String?
}
