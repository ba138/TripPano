//
//  PersonDetailView.swift
//  TripPano
//
//  Created by Basit Ali on 10/08/2026.
//

import SwiftUI

struct PersonDetailView: View {
    var body: some View {
        VStack{
            VStack {
                PersonalDocTile(title: "ID Card")
                PersonalDocTile(title: "Driving License")
                PersonalDocTile(title: "Proof of residence")

                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 150)
            
            .background(AppColors.white)
            .cornerRadius(10)

            .shadow(
                color: AppColors.subTitle.opacity(0.6),
                radius: 5,
                y: 6
            )
            Spacer()
        }  .navigationTitle(Text("Personal Documents"))
        .padding()
       
    }
}

#Preview {
    PersonDetailView()
}
