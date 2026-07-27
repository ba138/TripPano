import Foundation

struct HomeModel: Identifiable {
    let id = UUID()
    let imageURL: String
    let name: String
    let rating: Double
    let reviews: Double
    let price: String
    var isFavorite: Bool = false
}
