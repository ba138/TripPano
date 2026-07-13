//
//  ContentView.swift
//  TripPano
//
//  Created by Basit Ali on 13/07/2026.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            AppColors.primary
                .ignoresSafeArea()
            VStack {
                Image("logo")
                           .resizable()
                           .foregroundColor(
                               .green)
                           .scaledToFit()
                           .frame(width: 200,height: 150)
            }
        }
    }
}

#Preview {
    SplashView()
}
