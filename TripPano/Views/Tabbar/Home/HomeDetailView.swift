//
//  HomeDetailView.swift
//  TripPano
//
//  Created by Basit Ali on 15/08/2026.
//

import SwiftUI

struct HomeDetailView: View {
    
    let home: HomeModel
    @State var isLike : Bool = false
    
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
            HStack {
                VStack (alignment : .leading){
                    Text(home.name)
                        .font(.system(size: 20,weight: .bold
                                     )
                        )
                    Text("Edwin Street, Waterloo,\n London, England")
                        .foregroundColor(AppColors.subTitle)

                    
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                Button {
                    withAnimation(.spring()) {
                        isLike.toggle()
                    }
                } label: {

                    Circle()
                        .fill(
                            isLike
                            ? AppColors.primary
                            : Color.gray.opacity(0.15)
                        )
                        .frame(width: 44, height: 44)
                        .overlay {

                            Image(
                                systemName: isLike
                                ? "heart.fill"
                                : "heart"
                            )
                            .foregroundColor(
                                isLike
                                ? .white
                                : AppColors.subTitle
                            )
                        }
                }
                
            }
            VStack {
               

            }
            .padding(.vertical,10)
            Spacer()


        }
        

        .padding()
        .navigationTitle(home.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeDetailView(
        home: HomeModel(imageURL: "https://images.unsplash.com/photo-1506744038136-46273834b3fb", name: "Hunza", rating: 12, reviews: 4.5, price: "12", isFavorite: false)
        )
}
