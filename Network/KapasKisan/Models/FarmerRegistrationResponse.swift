import Foundation

struct FarmerRegistrationResponse: Codable {
    let pkFarmerID: Int
    let barcode: String?
    let pkSalutationID: Double?
    let salutationName: String?
    let farmerFullname: String?
    let fname: String?
    let genderName: String?
    let isWoman: Double?
    let dob: String?
    let casteName: String?
    let caste: String?
    let aadharNo: String?
    let mobileNo: String?
    let fAddress: String?
    let pkVillageID: Double?
    let villageName: String?
    let pkMandalID: Double?
    let mandalName: String?
    let pkDistrictID: Double?
    let districtName: String?
    let pkStateID: Double?
    let stateName: String?
    let pkPatId: Double?
    let farmerType: String?
    let passBookNo: String?
    let totalLand: Double?
    let noOfAcr: Double?
    let marketName: String?
    let marketID: Int?
    let isActive: Bool?
    let expectedYeild: Double?
    let regRemarks: String?
    let tc: Double?
    let hd: Double?
    let dc: Double?
    let cs: Double?
    
    // Map JSON keys (CamelCase in Java → snakeCase in JSON → Swift properties)
    enum CodingKeys: String, CodingKey {
        case pkFarmerID = "Pk_FarmerID"
        case barcode = "Barcode"
        case pkSalutationID = "Pk_SalutationID"
        case salutationName = "SalutationName"
        case farmerFullname = "FarmerFullname"
        case fname = "Fname"
        case genderName = "GenderName"
        case isWoman = "ISWOMAN"
        case dob = "DOB"
        case casteName = "CasteName"
        case caste = "Caste"
        case aadharNo = "AadharNo"
        case mobileNo = "MobileNo"
        case fAddress = "F_ADDRESS"
        case pkVillageID = "Pk_VillageID"
        case villageName = "VillageName"
        case pkMandalID = "PK_MandalID"
        case mandalName = "MandalName"
        case pkDistrictID = "Pk_DistrictID"
        case districtName = "DistrictName"
        case pkStateID = "PK_STATEID"
        case stateName = "STATENAME"
        case pkPatId = "PK_PatId"
        case farmerType = "FarmerType"
        case passBookNo = "PassBookNo"
        case totalLand = "TotalLand"
        case noOfAcr = "NoOfAcr"
        case marketName = "MarketName"
        case marketID = "MarketID"
        case isActive = "IsActive"
        case expectedYeild = "expectedyeild"
        case regRemarks = "RegRemarks"
        case tc = "tc"
        case hd = "hd"
        case dc = "dc"
        case cs = "cs"
    }
}
