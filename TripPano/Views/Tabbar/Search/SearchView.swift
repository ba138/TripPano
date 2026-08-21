//
//  SearchView.swift
//  TripPano
//
//  Created by Basit Ali on 27/07/2026.
//

import SwiftUI

struct SearchView: View {
    @State var searchText : String = ""
    @StateObject private var controller = HomeController()

    var body: some View {
        VStack(alignment : .leading,spacing : 12){
            SearchBarView(searchText: $searchText)

            HStack {
                AmenitiesComponent(
                    text : "Apartments",
                    backgroundColor: AppColors.primary,
                    cornerRadius: 24 ,
                    forgroundColor: AppColors.white
                )
                AmenitiesComponent(
                    text : "2 bad",
                    backgroundColor: AppColors.primary,
                    cornerRadius: 24 ,
                    forgroundColor: AppColors.white
                )

            }
            ScrollView (showsIndicators : false){
                LazyVStack(spacing: 16) {
                    ForEach(controller.homes) { home in
                            HomeCard(home: home)
                                           
                    }
                            }
                            .padding(.bottom,10)
                        }
            
            Spacer()
        }
        .padding()
        .ignoresSafeArea()
    }
}

#Preview {
    SearchView()
}
