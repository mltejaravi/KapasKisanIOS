// MARK: SmsRequest
struct SmsRequest: Codable {
    let phoneNumber: String
    let otp: String
}

// MARK: SmsRequest
struct SmsResponse: Codable {
    let status: String
    let result: String
}
