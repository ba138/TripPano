import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0..<20, id: \.self) { _ in
                        NotificationCard()
                    }
                }
            }
        }
        .padding(20)
        .navigationTitle("Notifications")
    }
}

#Preview {
    NotificationView()
}
