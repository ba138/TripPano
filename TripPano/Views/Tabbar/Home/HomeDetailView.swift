//
//  HomeDetailView.swift
//  TripPano
//
//  Created by Basit Ali on 15/08/2026.
//

import SwiftUI

struct HomeDetailView: View {
    
    let home: HomeModel
    
    var body: some View {
        VStack {
            

                AsyncImage(url: URL(string: home.imageURL)) { image in
                    image
                        .resizable()
                        .scaledToFill()

                } placeholder: {
                    ProgressView()
                        .frame(maxWidth: .infinity)
                }
                .frame(height: 180)
                .frame(maxWidth: .infinity)
                .clipped()
                .cornerRadius(18)
        }
        .navigationTitle(home.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeDetailView(
        home: HomeModel(imageURL: "https://images.unsplash.com/photo-1506744038136-46273834b3fb", name: "Hunza", rating: 12, reviews: 4.5, price: "12", isFavorite: false)
        )
}
