import Foundation

struct FarmerRegistrationRequest: Codable {
    var Flag: Int
    var Id: Int64
    var Barcode: String?
    var FarmerType: Int64
    var SalutationID: Int
    var GenderID: Int
    var FarmerFullname: String?
    var Fname: String?
    var PassBookNo: String?
    var Fk_District: Int64
    var Fk_Mandal: Int64
    var Fk_Village: Int64
    var AadharNo: String?
    var MobileNo: String?
    var TotalLand: Double  // Using Double for decimal in Swift
    var NoOfAcr: Double    // Using Double for decimal in Swift
    var MarketId: Int64
    var Category: Int
    var Address: String?
    var DOB: String?       // Changed from 'dob' to 'DOB' to match C#
    var Uniq_1: String?
    var Uniq_2: String?
    var Uniq_3: String?
    var Uniq_4: String?
    var tc: Double?        // Using Double for decimal
    var hd: Double?        // Using Double for decimal
    var dc: Double?        // Using Double for decimal
    var cs: Double?        // Using Double for decimal
    var MeasureType: Int

    // Custom coding keys to match C# property names exactly
    enum CodingKeys: String, CodingKey {
        case Flag
        case Id
        case Barcode
        case FarmerType
        case SalutationID
        case GenderID
        case FarmerFullname
        case Fname
        case PassBookNo
        case Fk_District
        case Fk_Mandal
        case Fk_Village
        case AadharNo
        case MobileNo
        case TotalLand
        case NoOfAcr
        case MarketId
        case Category
        case Address
        case DOB
        case Uniq_1 = "Uniq_1"
        case Uniq_2 = "Uniq_2"
        case Uniq_3 = "Uniq_3"
        case Uniq_4 = "Uniq_4"
        case tc
        case hd
        case dc
        case cs
        case MeasureType
    }
}
