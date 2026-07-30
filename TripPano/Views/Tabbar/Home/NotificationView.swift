//
//  NotificationView.swift
//  TripPano
//
//  Created by Basit Ali on 30/07/2026.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack{
            ScrollView {
                NotificationCard()

            }
        }
        .padding(20)
        .navigationTitle("Notifications")
        
    }
}

#Preview {
    NotificationView()
}
