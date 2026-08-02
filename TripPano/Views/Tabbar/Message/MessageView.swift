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

                
            }.padding(.vertical,20)
            ScrollView(showsIndicators : false) {
                ForEach(0..<10, id: \.self) { _ in
                    MessageCard()
                }
            }
            Spacer()
            
        }
        .padding(.horizontal,20)

        .ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)

    }
}

#Preview {
    MessageView()
}
