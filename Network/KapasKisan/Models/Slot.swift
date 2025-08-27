import Foundation

struct Slot: Codable, Identifiable {
    let pkDaySlotID: Int
    let monthID: Int
    let dayID: Int
    let centerSlotTimeName: String
    let availableSlots: Int
    let totalSlots: Int
    let usedSlots: Int
    let availableCapacity: Double
    let pCapacity: Double
    let maxLimit: Double

    var id: Int { pkDaySlotID }

    enum CodingKeys: String, CodingKey {
        case pkDaySlotID = "Pk_DaySlotID"
        case monthID = "MonthID"
        case dayID = "DayID"
        case centerSlotTimeName = "CenterSlotTimeName"
        case availableSlots = "AvailableSlots"
        case totalSlots = "TotalSlots"
        case usedSlots = "UsedSlots"
        case availableCapacity = "AvailableCapacity"
        case pCapacity = "PCapacity"
        case maxLimit = "MAXLIMIT"
    }
}
