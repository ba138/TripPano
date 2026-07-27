//
//  Onboarding2View.swift
//  TripPano
//
//  Created by Basit Ali on 26/07/2026.
//

import SwiftUI
import PhotosUI
struct Onboarding2View: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImage: Image? = nil
    @State private var progress : String = "2"

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
            
            
            DividerView(progress: progress)
                .padding(.vertical)
            PhotosPicker(selection: $selectedItem, matching: .images) {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color.gray.opacity(0.3))
                    .overlay {
                        if let selectedImage {
                            selectedImage
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 200)
                                .clipShape(Circle())
                        } else {
                            Image(systemName: "camera")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(AppColors.subTitle)
                                .frame(height: 30)
                        }
                    }
            }
            .onChange(of: selectedItem) { oldValue, newValue in
                Task {
                    if let data = try? await newValue?.loadTransferable(type: Data.self),
                       let uiImage = UIImage(data: data) {
                        selectedImage = Image(uiImage: uiImage)
                    }
                }
               progress = "3"
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
                            if let selectedImage {
                                selectedImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                            } else {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(AppColors.subTitle.opacity(0.3))
                                    .overlay {
                                        Image(systemName: "person")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundColor(AppColors.white)
                                            .frame(height: 40)
                                    }
                            }
                            if let selectedImage {
                                selectedImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                            } else {
                                Circle()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(AppColors.subTitle.opacity(0.3))
                                    .overlay {
                                        Image(systemName: "person")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundColor(AppColors.white)
                                            .frame(height: 30)
                                    }
                            }

                            
                            if let selectedImage {
                                selectedImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                            } else {
                                Circle()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(AppColors.subTitle.opacity(0.3))
                                    .overlay {
                                        Image(systemName: "person")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundColor(AppColors.white)
                                            .frame(height: 20)
                                    }
                            }

                            if let selectedImage {
                                selectedImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                            } else {
                                Circle()
                                    .frame(width: 40, height: 40)
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

