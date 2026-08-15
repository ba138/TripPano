//
//  AmenitiesComponent.swift
//  TripPano
//
//  Created by Basit Ali on 15/08/2026.
//

import SwiftUI

struct AmenitiesComponent: View {
    let text: String
    var body: some View {
Text(text)
            .foregroundColor(AppColors.primary)

            .padding()
            .frame(height: 50)
            .background(AppColors.white)
            .cornerRadius(18)

            .shadow(radius: 3,x : 2, y: 2)
            
    }
}

#Preview {
    AmenitiesComponent(text :"nice")
}
