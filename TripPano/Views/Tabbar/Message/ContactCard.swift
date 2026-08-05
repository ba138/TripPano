//
//  MessageCard.swift
//  TripPano
//
//  Created by Basit Ali on 01/08/2026.
//

import SwiftUI

struct ContactCard: View {
    var body: some View {
Rectangle()
            .frame(height: 80)
            .foregroundColor(AppColors.subTitle.opacity(0.3))
            .cornerRadius(12)
            .overlay {
                
                HStack(alignment :.center){
//                    RoundedRectangle()
                    Image("chatpro")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                    VStack(alignment : .leading){
                        Text("Basit Ali")
                            .bold()
                        Text("hi there how are you")

                    }
                    Spacer()
                    Text("12:30PM")

                    
                }
                .padding()
            }
    }
}

#Preview {
    ContactCard()
}
