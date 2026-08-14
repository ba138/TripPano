import SwiftUI

struct PayementMethodComponent: View {
    
    let imageName: String
    let title: String
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
            
            Text(title)
                .font(.body)
            
            Spacer()
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}

#Preview {
    PayementMethodComponent(
        imageName: "apple",
        title: "Pay with Apple"
    )
    .padding()
}
