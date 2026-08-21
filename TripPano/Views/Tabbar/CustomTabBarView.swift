import SwiftUI

enum TabItem: String, CaseIterable {
    case home = "Home"
    case map = "Map"
    case search = "Search"
    case message = "Message"
    case person = "Profile"
    
    var icon: String {
        switch self {
        case .home:
            return "house.fill"
        case .map:
            return "map.fill"
        case .search:
            return "magnifyingglass"
        case .message:
            return "message.fill"
        case .person:
            return "person.fill"
        }
    }
}


struct CustomTabBar: View {
    
    @Binding var selectedTab: TabItem
    
    var body: some View {
        HStack {
            ForEach(TabItem.allCases, id: \.self) { tab in
                
                Spacer()
                
                Button {
                    selectedTab = tab
                } label: {
                    VStack(spacing: 5) {
                        
                        Image(systemName: tab.icon)
                            .font(.system(size: 22))
                            .foregroundColor(
                                selectedTab == tab
                                ? AppColors.primary
                                : Color.gray
                            )
                        
                        Text(tab.rawValue)
                            .font(.system(size: 12))
                            .foregroundColor(
                                selectedTab == tab
                                ? AppColors.primary
                                : Color.gray
                            )
                    }
                }
                
                Spacer()
            }
        }
        .padding(.vertical, 12)
        .background(Color.white)
        .shadow(
            color: Color.black.opacity(0.1),
            radius: 5,
            x: 0,
            y: -2
        )
    }
}
struct MainView: View {
    
    @State private var selectedTab: TabItem = .home
    
    var body: some View {
        VStack {
            
            Spacer()
            
            switch selectedTab {
            case .home:
                HomeView()
            case .map:
                MapView()
            case .search:
                SearchView()
            case .message:
                ContactView()
            case .person:
                ProfileView()
            }
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()

    }
}
#Preview {
    NavigationView {
        MainView()

    }}
