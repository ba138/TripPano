import SwiftUI

@ViewBuilder
func socialButton(
    imageName: String,
    action: @escaping () -> Void
) -> some View {
    RoundedRectangle(cornerRadius: 12)
        .fill(Color.white)
        .frame(width: 100, height: 56)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.4), lineWidth: 1)
        )
        .overlay(
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
        )
        .onTapGesture {
            action()
        }
}
