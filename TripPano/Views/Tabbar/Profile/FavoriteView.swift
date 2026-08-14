//
//  FavoriteView.swift
//  TripPano
//
//  Created by Basit Ali on 14/08/2026.
//

import SwiftUI

struct FavoriteView: View {
    @StateObject private var controller = HomeController()

    var body: some View {
        ScrollView (showsIndicators : false){
            LazyVStack(spacing: 16) {
                ForEach(controller.homes) { home in
                        HomeCard(home: home)
                                       
                }
                        }
                        .padding(.bottom,10)
                    }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {

            ToolbarItem(placement: .principal) {
                HStack {
                    Text("Favorite")
                        .font(.headline)

                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }


            ToolbarItem(placement: .topBarTrailing) {
                Button {

                } label: {
                    Image(systemName: "ellipsis")
                }
            }
        }
        .padding()

       
    }
}

#Preview {
    FavoriteView()
}
