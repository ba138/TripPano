//
//  DetailProfileView.swift
//  TripPano
//
//  Created by Basit Ali on 09/08/2026.
//
import SwiftUI

struct DetailProfileView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                
                // Circle Avatar
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.gray)
                    .padding(25)
                    .frame(width: 120, height: 120)
                    .background(Color.gray.opacity(0.15))
                    .clipShape(Circle())
                
                // Edit Button
                Button {
                    // Edit profile action
                } label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(width: 36, height: 36)
                        .background(AppColors.primary)
                        .clipShape(Circle())
                }
                .offset(x:-40, y: 15)
            }
            .padding()
            Text("Basit Ali")
                .font(.system(size: 18)
                )
                .bold()
                
            Text("example@gmail.com")
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
            Spacer()
        }
        .padding()
        .navigationTitle("Profile Setting")
    }
}

#Preview {
    NavigationStack {
        DetailProfileView()
    }
}
