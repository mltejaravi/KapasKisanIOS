struct BarCode: Codable, Identifiable {
    let farmerId: Int
    let barCode: String
    
    // Map JSON keys (PascalCase → camelCase)
    enum CodingKeys: String, CodingKey {
        case farmerId = "FarmerId"
        case barCode = "BarCode"
    }
    
    // For SwiftUI lists
    var id: Int { farmerId }
}
