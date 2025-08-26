import Foundation

// MARK: - Farmer Registration Response
struct RegistrationResponse: Codable {
    var Barcode: String?
    var Pk_FarmerID: Int?
    var farmerType: String?
    var Fk_SalutationID: Int?
    var FarmerFullname: String?
    var Fname: String?
    var PassBookNo: String?
    var Fk_State: Int?
    var Fk_District: Int?
    var Fk_Mandal: Int?
    var Fk_Village: Int?
    var Fk_GramaPanchayat: EmptyObject? // Handle empty objects
    var AadharNo: String?
    var MobileNo: String?
    var NoOfAcr: Double?
    var IsActive: Bool?
    var CreateDate: String?
    var TotalLand: Double?
    var ExpectedYeild: EmptyObject? // Handle empty objects
    var UserName: String?
    var MarketID: Int?
    var UpdateFlag: EmptyObject? // Handle empty objects
    var ModifyDate: EmptyObject? // Handle empty objects
    var ModifyUser: EmptyObject? // Handle empty objects
    var Caste: String?
    var AadharName: EmptyObject? // Handle empty objects
    var UidFour: EmptyObject? // Handle empty objects
    var RegRemarks: String?
    var DOB: String?
    var AADHARREFNO: String?
    var AADHARMOBILE: String?
    var F_ADDRESS: String?
    var ISWOMAN: Int?
    var AA_TYPE: String?
    var Evidence_1: String?
    var Evidence_2: String?
    var StateApproval: Int?
    var ApprovedBy: EmptyObject? // Handle empty objects
    var ApproveDate: EmptyObject? // Handle empty objects
    var CCIAcceptedBy: EmptyObject? // Handle empty objects
    var CciAcceptDate: EmptyObject? // Handle empty objects
    var tc: Double?
    var hd: Double?
    var dc: Double?
    var cs: Double?
}

// Custom type to handle empty JSON objects {}
struct EmptyObject: Codable {}
