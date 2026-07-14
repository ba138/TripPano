//
//  Onboarding1View.swift
//  TripPano
//
//  Created by Basit Ali on 14/07/2026.
//

import SwiftUI

struct Onboarding1View: View {
    var body: some View {
        VStack{
            Image("sublogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Spacer()
            Text("Profile Setup")
                .font(.title)
                .bold()
                .foregroundColor(AppColors.fontTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
            Text("Lets setup your profile first to know you better")
                .foregroundColor(AppColors.subTitle)
            Spacer()
        }.padding(20)
    }
}

#Preview {
    NavigationStack{
        Onboarding1View()
        
    }
}
