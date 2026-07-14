//
//  RegisterView.swift
//  TripPano
//
//  Created by Basit Ali on 13/07/2026.
//

import SwiftUI

struct RegisterView: View {
    @State var email :String = ""
    @State var password : String = ""
    @State var confromPassword : String = ""
    @State var isAgree : Bool = false
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        ZStack {
            AppColors.primary
                .ignoresSafeArea()

            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 220)
        }
        VStack{
            Rectangle()
                .fill(.white)
                .frame(height: UIScreen.main.bounds.height * 0.7)
                .clipShape(
                    UnevenRoundedRectangle(
                        topLeadingRadius: 25,
                        topTrailingRadius: 25
                    )
                )
                .overlay {
                    
                    VStack{
                        Rectangle()
                            .frame(width: 100,height: 2)
                            .background(AppColors.primary)
                            .presentationCornerRadius(2)
                        Text("Create Account")
                            .font(.title)
                            .bold()
                            .foregroundColor(AppColors.fontTitle)
                            .frame(maxWidth: .infinity,alignment: .leading)
                        Text("New to TripPano! Enter in your details to create your account")
                            .foregroundColor(AppColors.subTitle)
                        Spacer()
                         Text("Email")
                            .font(.system(size: 12))
                            .bold()
                            .frame(maxWidth: .infinity,alignment: .leading)

                        TextField("Exampl@gmail.com", text: $email)
                            .foregroundStyle(AppColors.fontTitle)
                            .tint(AppColors.fontTitle)

                            .foregroundColor(.subTitle)
                            .accentColor(.subTitle)
                            .frame(height: 56)
                            .padding(.horizontal ,20)

                            .background(AppColors.textfield)
                            .cornerRadius(10)
                        Spacer()
                        Text("Password")
                           .font(.system(size: 12))
                           .bold()
                           .frame(maxWidth: .infinity,alignment: .leading)
                        SecureField("*******", text: $password)
                            .foregroundColor(.subTitle)
                            .accentColor(.subTitle)
                            .frame(height: 56)
                            .padding(.horizontal ,20)

                            .background(AppColors.textfield)
                            .cornerRadius(10)
                        Spacer()
                        Text("Confrom Password")
                           .font(.system(size: 12))
                           .bold()
                           .frame(maxWidth: .infinity,alignment: .leading)
                        SecureField("*******", text: $confromPassword)
                            .foregroundColor(.subTitle)
                            .accentColor(.subTitle)
                            .frame(height: 56)
                            .padding(.horizontal ,20)

                            .background(AppColors.textfield)
                            .cornerRadius(10)

                       
                        HStack{
                            RoundedRectangle(cornerRadius: 4)
                                .fill(isAgree ? AppColors.primary : Color.clear)

                                .frame(width: 20, height: 20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 4)
                                        .stroke(AppColors.primary, lineWidth: 1)
                                    
                                )
                                .onTapGesture {
                                    isAgree.toggle()
                                }
                            Text("I agree with the terms & policies")

                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                        Spacer()
                        NavigationLink(destination: Onboarding1View()){
                            Text("Register")
                                    .font(.system(size: 15))
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity,maxHeight: 55)
                                    .background(AppColors.primary)
                                    .cornerRadius(12)

                        }
//                        NavigationLink {
//                            Onboarding1View()
//                        } label:

                        

                        HStack(spacing: 12) {
                            Rectangle()
                                .frame(height: 1)
                                .background(AppColors.primary)

                            Text("or Register")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(.gray)

                            Rectangle()
                                .frame(height: 1)
                                .background(AppColors.primary)
                        }
                        .padding(.vertical,10)
                        HStack(spacing: 16) {
                            socialButton(imageName: "google") {
                                print("Google tapped")
                            }

                            socialButton(imageName: "facebook") {
                                print("Facebook tapped")
                            }

                            socialButton(imageName: "apple") {
                                print("Apple tapped")
                            }
                        }
                        .padding(.vertical,10)
                        HStack(spacing : 0){
                            Text("Already have account?")
                            Text("Login")
                                .bold()
                                .foregroundColor(AppColors.primary)
                                .onTapGesture {
                                    dismiss()

                                }
                            
                            
                        }
                        Spacer()
                    }
                    .padding(20)
                }

        }

        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    NavigationStack{
        RegisterView()
        
    }
}
