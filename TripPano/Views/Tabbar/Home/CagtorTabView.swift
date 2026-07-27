import SwiftUI
struct CategoryTabBar: View {

    @Binding var selectedTab: HomeTab

    var body: some View {
        HStack {
            ForEach(HomeTab.allCases, id: \.self) { tab in

                Button {
                    withAnimation(.easeInOut) {
                        selectedTab = tab
                    }
                } label: {
                    VStack(spacing: 8) {

                        Image(tab.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height:30, )
                            .foregroundColor(
                                selectedTab == tab
                                ? AppColors.primary
                                : AppColors.subTitle
                            )

                        Text(tab.rawValue)
                            .font(.system(size: 13, weight: .medium))
                            .foregroundColor(
                                selectedTab == tab
                                ? AppColors.primary
                                : AppColors.subTitle
                            )

                        Capsule()
                            .fill(
                                selectedTab == tab
                                ? AppColors.primary
                                : Color.clear
                            )
                            .frame(width: 30, height: 3)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}
