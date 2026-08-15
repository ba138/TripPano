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
        ScrollView(
            showsIndicators : false,
            content: {
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
                HStack {
                    Text("\(home.price)per night")
                        .foregroundColor(AppColors.primary)
                        .bold()
                        .underline(color: AppColors.primary)

                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.vertical,6)
                HStack {
                    Text("Your Stay")
                        .font(.system(size: 18))
                        .bold()

                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.vertical,6)
                HStack {
                    Text("1 - 16 Dec")
                        .foregroundColor(AppColors.subTitle)
                    Text("16 days")
                        .foregroundColor(AppColors.subTitle)
                }.frame(maxWidth: .infinity,alignment: .leading)
                HStack {
                    Text("Amenities")
                        .font(.system(size: 18))
                        .bold()

                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.vertical,6)
                HStack {
                    AmenitiesComponent(text : "AC")
                    AmenitiesComponent(text : "Heating")
                    AmenitiesComponent(text : "Wifi")
                    AmenitiesComponent(text : "Free Parking")



                }
                HStack {
                    AmenitiesComponent(text : "Kitchen")
                    AmenitiesComponent(text : "Dryer")
                    AmenitiesComponent(text : "Door Alarm")



                }
                .frame(maxWidth: .infinity,alignment: .leading)
                HStack {
                    Text("Reviews")
                        .font(.system(size: 18))
                        .bold()

                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.vertical,6)
                ReviewCard(
                    name: "John Doe",
                    date: "August 12, 2026",
                    rating: 5.0,
                    review: "Amazing hotel! The room was clean, comfortable, and the staff were very friendly. I really enjoyed my stay.",
                    avatar: "https://i.pravatar.cc/150?img=12"
                )
                ReviewCard(
                    name: "John Doe",
                    date: "August 12, 2026",
                    rating: 5.0,
                    review: "Amazing hotel! The room was clean, comfortable, and the staff were very friendly. I really enjoyed my stay.",
                    avatar: "https://i.pravatar.cc/150?img=12"
                )
                  
                Button {
                    
                } label: {
                Text("Book")
                        .foregroundColor(AppColors.white)
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .background(AppColors.primary)
                        .cornerRadius(12)
                }
                .padding(.vertical,12)


            }
        })
        

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
