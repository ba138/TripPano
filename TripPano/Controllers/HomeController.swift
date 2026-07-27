import Foundation
import Combine
class HomeController: ObservableObject {
    
    @Published var homes: [HomeModel] = []
    
    init() {
        fetchHomes()
    }
    
    func fetchHomes() {
        homes = [
            HomeModel(
                imageURL: "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
                name: "Hunza Valley",
                rating: 4.8,
                reviews: 2.4,
                price: "$120 / Night"
            ),
            
            HomeModel(
                imageURL: "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
                name: "Skardu Resort",
                rating: 4.5,
                reviews: 2.4,
                price: "$90 / Night"
            ),
            
            HomeModel(
                imageURL: "https://images.unsplash.com/photo-1441974231531-c6227db76b6e",
                name: "Fairy Meadows",
                rating: 4.9,
                reviews: 2.4,
                price: "$150 / Night"
            )
        ]
    }
}
