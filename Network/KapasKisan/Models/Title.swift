struct Title: Codable, Identifiable, Hashable {
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"       // match your API JSON keys
        case name = "name"   // change if your API key is different
    }
}
