import Foundation

// MARK: - Farmer Docs Request Model
struct FarmerDocsRequest: Codable {
    let farmerID: Decimal
    let typeID: Int
    let proof: String? // Base64 string
    let type: String?
    
    enum CodingKeys: String, CodingKey {
        case farmerID = "FarmerID"
        case typeID = "TypeID"
        case proof = "Proof"
        case type = "Type"
    }
}
