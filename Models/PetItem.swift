
import Foundation

struct PetItem: Identifiable, Equatable {
    let id: String
    let name: String
    let species: String
    let description: String
    let imageName: String
    var isFavorite: Bool = false
    

    static func == (lhs: PetItem, rhs: PetItem) -> Bool {
        return lhs.id == rhs.id
    }
}
