//
//  DetailProfileView.swift
//  TripPano
//
//  Created by Basit Ali on 09/08/2026.
//
import SwiftUI

struct DetailProfileView: View {
    @State private var isHostingProfile = false

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
                .frame(height: 200)
            
                .foregroundColor(AppColors.white)
                .cornerRadius(12)
                .shadow(color :AppColors.subTitle.opacity(0.6) , radius: 5,y: 6)
                .overlay {
                    VStack(spacing : 0){
                     ProfileDetailTile(title: "Full Name", value: "Basit Ali")
                        ProfileDetailTile(title: "Email", value: "Example@gmail.com")

                        ProfileDetailTile(title: "Phone", value: "123456789")

                        ProfileDetailTile(title: "D-O-B", value: "2000-8-20")
                        ProfileDetailTile(title: "Live In", value: "Paskistan")

                    }
                    .padding()
                    
                }
            NavigationLink(destination: {
                PersonDetailView()
            }, label: {
                HStack {
                    Text("Personal Documents")
                        .bold()

                    Spacer()

                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
            })
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            
            .background(AppColors.white)
            .cornerRadius(10)

            .shadow(
                color: AppColors.subTitle.opacity(0.6),
                radius: 5,
                y: 6
            )
            HStack {
                Text("Password")
                    .bold()

                Spacer()

                Text("Create New")
                    .font(.system(size: 14))
                    .foregroundColor(AppColors.primary)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            
            .background(AppColors.white)
            .cornerRadius(10)

            .shadow(
                color: AppColors.subTitle.opacity(0.6),
                radius: 5,
                y: 6
            )
            HStack {
                Text("Hosting Profile")
                    .bold()

                Spacer()

                Toggle("", isOn: $isHostingProfile)
                    .labelsHidden()
                    .tint(AppColors.primary)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .background(AppColors.white)
            .cornerRadius(10)
            .shadow(
                color: AppColors.subTitle.opacity(0.6),
                radius: 5,
                y: 6
            )
            
            Button {
                
            } label: {
            Text("save")
                    .font(.system(size: 20,weight: .bold))
                    .foregroundColor(AppColors.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 56)
                    .background(AppColors.primary)
                    .cornerRadius(12)

            }

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
