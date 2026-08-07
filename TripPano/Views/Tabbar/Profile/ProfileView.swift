//
//  ProfileView.swift
//  TripPano
//
//  Created by Basit Ali on 27/07/2026.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
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
                
            }
            Spacer()
        }
        .padding()
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView()
}
