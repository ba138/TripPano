import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(AppColors.subTitle)
                .font(.system(size: 18))
            
            TextField("Search...", text: $searchText)
                .foregroundColor(AppColors.fontTitle)
                .accentColor(AppColors.primary)
            
            Button {
                // Filter Action
            } label: {
                Circle()
                    .fill(AppColors.primary)
                    .frame(width: 40, height: 40)
                    .overlay {
                        Image(systemName: "line.3.horizontal.decrease.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                    }
            }
        }
        .padding(.horizontal, 16)
        .frame(height: 60)
        .background(AppColors.textfield)
        .cornerRadius(30)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}
