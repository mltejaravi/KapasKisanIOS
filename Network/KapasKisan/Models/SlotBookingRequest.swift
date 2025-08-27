import Foundation

struct SlotBookingRequest: Codable {
    let farmerId: Int
    let daySlotId: Int
    let centerId: Int
    let transactionId: String
    let approxWgt: Decimal
    let remarks: String
    let userId: Int
    
    enum CodingKeys: String, CodingKey {
        case farmerId = "FarmerId"
        case daySlotId = "DaySlotId"
        case centerId = "CenterId"
        case transactionId = "TransactionId"
        case approxWgt = "ApproxWgt"
        case remarks = "Remarks"
        case userId = "UserId"
    }
}
