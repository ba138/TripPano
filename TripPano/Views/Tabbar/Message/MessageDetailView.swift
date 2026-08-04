import SwiftUI

struct MessageDetailView: View {
    var body: some View {
        VStack {

        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text("Justine Blake")
                        .font(.headline)

                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }

            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    // More action
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
        }
    }
}



#Preview {
    MessageDetailView()
}
