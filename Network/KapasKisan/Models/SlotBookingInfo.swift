import Foundation

struct SlotBookingInfo: Codable, Identifiable {
    let dayID: Int
    let monthID: Int
    let bookingNo: String
    let ginningMillName: String
    let marketName: String
    let centerSlotTimeName: String
    let approxWgt: Double?
    let cancelled: String?
    
    let id = UUID()
    enum CodingKeys: String, CodingKey {
        case dayID = "DayID"
        case monthID = "MonthID"
        case bookingNo = "BookingNo"
        case ginningMillName = "GinningMillName"
        case marketName = "MarketName"
        case centerSlotTimeName = "CenterSlotTimeName"
        case approxWgt = "ApproxWgt"
        case cancelled = "Cancelled"
    }
}
