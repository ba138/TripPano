import SwiftUI

struct ProfileDetailTile: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
                .fontWeight(.bold)

            Spacer()

            Text(value)
                .foregroundColor(.gray)

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    ProfileDetailTile(
        title: "Name",
        value: "Basit Ali"
    )
}
