//
//  AmenitiesComponent.swift
//  TripPano
//
//  Created by Basit Ali on 15/08/2026.
//

import SwiftUI

struct AmenitiesComponent: View {
    
    let text: String
    let backgroundColor: Color?
    let cornerRadius: CGFloat?
    let forgroundColor : Color?
    
    init(
        text: String,
        backgroundColor: Color? = nil,
        cornerRadius: CGFloat? = nil,
        forgroundColor : Color? = nil ,
        
    ) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.forgroundColor = forgroundColor
    }
    
    var body: some View {
        Text(text)
            .foregroundColor( forgroundColor ?? AppColors.primary)
            .padding()
            .frame(height: 50)
            .background(backgroundColor ?? AppColors.white)
            .cornerRadius(cornerRadius ?? 18)
            .shadow(radius: 3, x: 2, y: 2)
    }
}

#Preview {
    VStack(spacing: 20) {
        // Default: white background, 18 radius
        AmenitiesComponent(text: "Nice")
        
        // Custom background and radius
        AmenitiesComponent(
            text: "Swimming Pool",
            backgroundColor: AppColors.primary,
            cornerRadius: 10
        )
    }
}
