import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            ScrollView(showsIndicators : false) {
                LazyVStack(spacing: 16) {
                    ForEach(0..<20, id: \.self) { _ in
                        NotificationCard()
                    }
                }
            }
            .padding(.horizontal, 20)
                       .padding(.top, 20)
        }
        .navigationTitle("Notifications")
    }
}

#Preview {
    NotificationView()
}
