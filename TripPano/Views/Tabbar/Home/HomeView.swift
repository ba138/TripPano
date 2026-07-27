//
//  HomeView.swift
//  TripPano
//
//  Created by Basit Ali on 27/07/2026.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var controller = HomeController()

    @State private var searchText = ""
    @State private var selectedTab: HomeTab = .all


    var body: some View {
        VStack{
            HStack{
                Image("sublogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                Spacer()
                Circle()
                    .frame(width: 40,height: 40)
                    .foregroundColor(AppColors.subTitle.opacity(0.3))
                    .overlay {
                        Image(systemName: "bell")
                    }
                
            }
            SearchBarView(searchText: $searchText)
            CategoryTabBar(selectedTab: $selectedTab)
                .padding(.vertical)
            Group {
                            switch selectedTab {

                            case .all:
                                ScrollView (showsIndicators : false){
                                    LazyVStack(spacing: 16) {
                                        ForEach(controller.homes) { home in
                                                HomeCard(home: home)
                                                               
                                        }
                                                }

                                                .padding(.bottom,10)
                                            }
                                

                            case .beach:
                                ScrollView (showsIndicators : false){
                                    LazyVStack(spacing: 16) {
                                        ForEach(controller.homes) { home in
                                                HomeCard(home: home)
                                                               
                                        }
                                                }
                                                .padding(.bottom,10)
                                            }
                            case .mountain:
                                ScrollView (showsIndicators : false){
                                    LazyVStack(spacing: 16) {
                                        ForEach(controller.homes) { home in
                                                HomeCard(home: home)
                                                               
                                        }
                                                }
                                                .padding(.bottom,10)
                                            }
                            case .hotel:
                                ScrollView (showsIndicators : false){
                                    LazyVStack(spacing: 16) {
                                        ForEach(controller.homes) { home in
                                                HomeCard(home: home)
                                                               
                                        }
                                                }
                                                .padding(.bottom,10)
                                            }

                            }
                        }


        }
        .padding(.horizontal,20)
        
    }
}

#Preview {
    HomeView()
}
