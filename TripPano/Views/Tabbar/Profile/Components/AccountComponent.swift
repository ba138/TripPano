import SwiftUI

struct AccountComponent: View {
    
    let leadingIcon: String
    let title: String
    let trailingIcon: String
    let destination: AnyView?
    
    init(
        leadingIcon: String,
        title: String,
        trailingIcon: String,
        destination: AnyView? = nil
    ) {
        self.leadingIcon = leadingIcon
        self.title = title
        self.trailingIcon = trailingIcon
        self.destination = destination
    }
    
    var body: some View {
        Group {
            if let destination = destination {
                NavigationLink {
                    destination
                } label: {
                    content
                }
            } else {
                content
            }
        }
    }
    
    private var content: some View {
        HStack(spacing: 16) {
            
            Image(systemName: leadingIcon)
                .font(.title3)
                .frame(width: 24)
            
            Text(title)
                .font(.body)
            
            Spacer()
            
            Image(systemName: trailingIcon)
                .font(.body)
                .foregroundStyle(.gray)
        }
        .padding()
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
#Preview {
    VStack(spacing: 16) {
        AccountComponent(
            leadingIcon: "person.circle",
            title: "Profile",
            trailingIcon: "chevron.right"
        )

        AccountComponent(
            leadingIcon: "bell",
            title: "Notifications",
            trailingIcon: "chevron.right"
        )

        AccountComponent(
            leadingIcon: "gearshape",
            title: "Settings",
            trailingIcon: "chevron.right"
        )
    }
    .padding()
}
