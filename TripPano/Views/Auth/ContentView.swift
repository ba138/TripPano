

import SwiftUI

//
//  SplashView.swift
//  TripPano
//
//  Created by Basit Ali on 13/07/2026.
//


import SwiftUI

import SwiftUI

struct SplashView: View {

    @State private var navigateToLogin = false
    @State private var scale: CGFloat = 0.4
    @State private var opacity: Double = 0

    private let controller = SplashController()

    var body: some View {

        NavigationStack {

            ZStack {

                AppColors.primary
                    .ignoresSafeArea()

                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 160)
                    .scaleEffect(scale)
                    .opacity(opacity)
            }
            .onAppear {

                // Slow logo animation
                withAnimation(.easeInOut(duration: 2.2)) {
                    scale = 1.0
                    opacity = 1.0
                }

                // Navigate after 3 seconds
                controller.startTimer {
                    navigateToLogin = true
                }
            }
            .navigationDestination(isPresented: $navigateToLogin) {
                LoginView()
            }
        }
    }
}


#Preview {
    SplashView()
}
