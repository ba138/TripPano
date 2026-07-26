//
//  ProgressBar.swift
//  TripPano
//
//  Created by Basit Ali on 26/07/2026.
//

import SwiftUI
struct DividerView : View {
    let progress : String
    var body: some View {
        HStack {
            Circle(
                
            )
                .frame(width: 30,height: 30)
                .foregroundColor(progress == "1" ? AppColors.primary : AppColors.subTitle)
                .overlay {
                    Text("1")
                        .foregroundColor(AppColors.white)
                    
                }
            
            VStack{                Divider()
                    .frame(maxWidth: .infinity)
                       .frame(height: 1)
                       .background(progress == "1" ? AppColors.primary : AppColors.subTitle)
}
            Circle(
                
            )
                .frame(width: 30,height: 30)
                .foregroundColor(progress == "2" ? AppColors.primary : Color.gray.opacity(0.3))
                .overlay {
                    Text("2")
                        .foregroundColor(progress == "2" ? AppColors.white : AppColors.subTitle)
                    
                }
            VStack{                Divider()
                    .frame(maxWidth: .infinity)
                       .frame(height: 1)
                       .background(progress == "2" ? AppColors.primary : AppColors.subTitle)

}
            Circle(
                
            )
                .frame(width: 30,height: 30)
                .foregroundColor(progress == "3" ? AppColors.primary : Color.gray.opacity(0.3))
                .overlay {
                    Text("3")
                        .foregroundColor(progress == "3" ? AppColors.white : AppColors.subTitle)
                    
                }
        }
    }
}
