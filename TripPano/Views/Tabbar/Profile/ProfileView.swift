//
//  ProfileView.swift
//  TripPano
//
//  Created by Basit Ali on 27/07/2026.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView (showsIndicators : false){
            VStack{
                HStack{
                    Image("sublogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    Spacer()
                    NavigationLink {
                       NotificationView()
                    } label: {
                        Circle()
                            .frame(width: 40,height: 40)
                            .foregroundColor(AppColors.subTitle.opacity(0.3))
                            .overlay {
                                Image(systemName: "bell")
                            }
                    }

                    
                }
                HStack{
                    Circle()
                        .frame(width: 80,height: 80)
                        .foregroundColor(AppColors.subTitle.opacity(0.3))
                        .overlay {
                            Image(systemName: "person")
                                .foregroundColor(AppColors.primary)
                                .font(.system(size: 50))
                          
                        }
                    VStack(alignment : .leading){
                        Text("Basit Ali")
                            .font(
                                .system(size: 20)
                            )
                            .bold()
                        Text("xyz@gmail.com")
                            .font(
                                .system(size: 16)
                            )
                    }
                    Spacer()
                    Circle()
                        .frame(width: 40,height: 40)
                        .foregroundColor(AppColors.subTitle.opacity(0.3))
                        .overlay {
                            Image(systemName: "pencil")
                        }
                    
                }
                HStack {
                    Text("Account")
                        .font(
                            .system(size: 20)
                        )
                        .bold()
                    Spacer()

                }
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                
                    .foregroundColor(AppColors.white)
                    .cornerRadius(12)
                    .shadow(color :AppColors.subTitle.opacity(0.6) , radius: 5,y: 6)
                    .overlay {
                        VStack(spacing : 0){
                            AccountComponent(leadingIcon: "person.circle", title: "Profile Settings", trailingIcon: "chevron.right")
                            AccountComponent(leadingIcon: "link", title: "Link", trailingIcon: "chevron.right")
                            AccountComponent(leadingIcon: "wallet.bifold", title: "Payment", trailingIcon: "chevron.right")
                            AccountComponent(leadingIcon: "heart", title: "Favorite", trailingIcon: "chevron.right")
                            AccountComponent(leadingIcon: "mappin.and.ellipse", title: "Trips", trailingIcon: "chevron.right")
                        }
                    }
                   
                
                HStack {
                    Text("App")
                        .font(
                            .system(size: 20)
                        )
                        .bold()
                    Spacer()

                }
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                
                    .foregroundColor(AppColors.white)
                    .cornerRadius(12)
                    .shadow(color :AppColors.subTitle.opacity(0.6) , radius: 5,y: 6)
                    .overlay {
                        VStack(spacing : 0){
                            AccountComponent(leadingIcon: "bell", title: "Notification", trailingIcon: "chevron.right")
                            AccountComponent(leadingIcon: "mappin.and.ellipse", title: "Location", trailingIcon: "chevron.right")
                            AccountComponent(leadingIcon: "globe.americas", title: "Language", trailingIcon: "chevron.right")
                            AccountComponent(leadingIcon: "character.cursor.ibeam", title: "Fonts", trailingIcon: "chevron.right")
                            AccountComponent(leadingIcon: "globe", title: "App Feedback", trailingIcon: "chevron.right")
                        }
                    }
                   
                
                
                Spacer()
            }
        }
        .padding()
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView()
}
