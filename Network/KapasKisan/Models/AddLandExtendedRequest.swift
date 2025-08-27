import Foundation

struct AddLandExtendedRequest: Codable {
    let farmerId: Int
    let totalLand: Double
    let cottonLand: Double
    let marketId: Int
    let villageId: Int
    let uniqueId: String?
    let uniq1: String?
    let uniq2: String?
    let uniq3: String?
    let uniq4: String?
    let tc: Double?
    let hd: Double?
    let dc: Double?
    let cs: Double?
    let measureType: Int
    
    enum CodingKeys: String, CodingKey {
        case farmerId = "FarmerId"
        case totalLand = "TotalLand"
        case cottonLand = "CottonLand"
        case marketId = "MARKETID"
        case villageId = "VILLAGEID"
        case uniqueId = "UNIQUEID"
        case uniq1 = "Uniq_1"
        case uniq2 = "Uniq_2"
        case uniq3 = "Uniq_3"
        case uniq4 = "Uniq_4"
        case tc = "tc"
        case hd = "hd"
        case dc = "dc"
        case cs = "cs"
        case measureType = "MeasureType"
    }
}
