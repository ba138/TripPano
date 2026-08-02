//
//  MessageView.swift
//  TripPano
//
//  Created by Basit Ali on 27/07/2026.
//

import SwiftUI

struct MessageView: View {
    var body: some View {

        VStack{
           
            HStack{
                Image("sublogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                Spacer()
                
                NavigationLink {
                   NotificationView()
                } label: {
                    Circle()
                        .frame(width: 40,height: 40)
                        .foregroundColor(AppColors.subTitle.opacity(0.3))
                        .overlay {
                            Image(systemName: "bell")
                        }
                }

                
            }
            Text("Message")
                .font(.system(size: 20))
                .bold()
                .foregroundColor(AppColors.fontTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
            Text("Your conversations are backed up here")
                .font(.system(size: 16))
                .foregroundColor(AppColors.subTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
            ScrollView(showsIndicators : false) {
                ForEach(0..<10, id: \.self) { _ in
                    MessageCard()
                }
            }
            Spacer()
            
        }
        .padding(20)

        .ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)

    }
}

#Preview {
    MessageView()
}
