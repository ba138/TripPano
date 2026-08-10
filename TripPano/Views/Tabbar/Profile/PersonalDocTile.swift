import SwiftUI

struct PersonalDocTile: View {
    let title: String

    var body: some View {
        HStack {
            Text(title)
                .fontWeight(.bold)

            Spacer()

          

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    PersonalDocTile(
        title: "Name",
    )
}
