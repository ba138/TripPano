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
            Text(home.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text(home.price)
                .font(.headline)
                .foregroundColor(AppColors.primary)
        }
        .navigationTitle(home.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeDetailView(
        home: HomeModel(imageURL: "", name: "Hunza", rating: 12, reviews: 4.5, price: "12", isFavorite: false)
        )
}
