//
//  Onboarding2View.swift
//  TripPano
//
//  Created by Basit Ali on 26/07/2026.
//

import SwiftUI

struct Onboarding2View: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack  {
            Image("sublogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height:80)
            Text("Profile Setup")
                .font(.title)
                .bold()
                .foregroundColor(AppColors.fontTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
            Text("Lets setup your profile first to know you better")
                .foregroundColor(AppColors.subTitle)
            
            
            DividerView(progress: "2")
                .padding(.vertical)
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(Color.gray.opacity(0.3))
                .overlay {
                    Image(systemName: "camera")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(AppColors.subTitle)

                        .frame(height: 30)
                }
            Text("Upload a Photo")
                .font(.system(size: 20))
                .bold()
            Rectangle()
                .foregroundColor(Color.gray.opacity(0.3))
                .frame(height: 200)
                .cornerRadius(12)
                .overlay {
                    VStack (alignment : .leading){
                        Text("Preview")
                        HStack(alignment:.bottom){
                            Circle()
                                .frame(height: 100)
                                .foregroundColor(AppColors.subTitle.opacity(0.3))
                                .overlay {
                                    Image(systemName: "person")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(AppColors.white)

                                        .frame(height: 40)
                                }
                            Circle()
                                .frame(height: 80)
                                .foregroundColor(AppColors.subTitle.opacity(0.3))
                                .overlay {
                                    Image(systemName: "person")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(AppColors.white)

                                        .frame(height: 30)
                                }

                            
                            Circle()
                                .frame(height: 60)
                                .foregroundColor(AppColors.subTitle.opacity(0.3))
                                .overlay {
                                    Image(systemName: "person")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(AppColors.white)

                                        .frame(height: 20)
                                }

                            Circle()
                                .frame(height: 40)
                                .foregroundColor(AppColors.subTitle.opacity(0.3))
                                .overlay {
                                    Image(systemName: "person")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(AppColors.white)

                                        .frame(height: 15)
                                }

                        }
                        
                        
                    }
                    
                }
            NavigationLink(destination: Onboarding2View()){
                Text("Next")
                        .font(.system(size: 15))
                        .bold()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,maxHeight: 55)
                        .background(AppColors.primary)
                        .cornerRadius(12)

            }
            Button {
                dismiss()

            } label: {
                Text("Back")
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(AppColors.primary)

            }

        }
        .ignoresSafeArea()
        .padding(.horizontal,20)
        .navigationBarBackButtonHidden(true)
            .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    Onboarding2View()
}
