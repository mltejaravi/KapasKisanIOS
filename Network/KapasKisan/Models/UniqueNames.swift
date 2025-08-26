import Foundation

struct UniqueNames: Codable, Identifiable, Hashable {
    let id: UUID = UUID()
    
    let uniQ_ID_1_NAMING: String?
    let uniQ_ID_2_NAMING: String?
    let uniQ_ID_3_NAMING: String?
    let uniQ_ID_4_NAMING: String?

    enum CodingKeys: String, CodingKey {
        case uniQ_ID_1_NAMING
        case uniQ_ID_2_NAMING
        case uniQ_ID_3_NAMING
        case uniQ_ID_4_NAMING
    }
}
