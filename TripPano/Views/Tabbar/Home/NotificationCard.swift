//
//  NotificationCard.swift
//  TripPano
//
//  Created by Basit Ali on 30/07/2026.
//

import SwiftUI

struct NotificationCard: View {
    var body: some View {
        HStack(spacing : 10){
            Rectangle()
                .background(AppColors.subTitle).opacity(0.1)
                .frame(width: 40 ,height: 40)
                .cornerRadius(10)
                .overlay {
                    Image(systemName: "bell")

                }
            VStack(alignment : .leading ){
                Text("Check In")
                    .foregroundColor(AppColors.fontTitle)
                    .bold()
                Text("Hamilton Studio Apartment")
                    .foregroundColor(AppColors.subTitle)
            }
            Spacer()
            
            Text("02:12 PM")
                .foregroundColor(AppColors.primary)
                .bold()
        }
    }
}

#Preview {
    NotificationCard()
}
