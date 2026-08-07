import SwiftUI

struct AccountComponent: View {

    let leadingIcon: String
    let title: String
    let trailingIcon: String

    var body: some View {
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
