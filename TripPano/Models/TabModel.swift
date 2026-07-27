import SwiftUI

enum HomeTab: String, CaseIterable {
    case all = "Apartments"
    case beach = "Homes"
    case mountain = "Villas"
    case hotel = "Bunglows"

    var icon: String {
        switch self {
        case .all:
            return "apartments"
        case .beach:
            return "homes"
        case .mountain:
            return "villas"
        case .hotel:
            return "bunglows"
        }
    }
}
