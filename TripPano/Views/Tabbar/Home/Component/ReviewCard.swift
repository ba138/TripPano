import SwiftUI

struct ReviewCard: View {
    
    let name: String
    let date: String
    let rating: Double
    let review: String
    let avatar: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            
            // MARK: - Header
            HStack {
                
                // Avatar
                AsyncImage(url: URL(string: avatar)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Circle()
                        .fill(Color.gray.opacity(0.15))
                        .overlay {
                            Image(systemName: "person.fill")
                                .foregroundColor(.gray)
                        }
                }
                .frame(width: 48, height: 48)
                .clipShape(Circle())
                
                // Name & Date
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text(name)
                        .font(.headline)
                        .foregroundColor(AppColors.fontTitle)
                    
                    Text(date)
                        .font(.caption)
                        .foregroundColor(AppColors.subTitle)
                }
                
                Spacer()
                
                // Rating
                HStack(spacing: 5) {
                    
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(AppColors.primary)
                    
                    Text(String(format: "%.1f", rating))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(AppColors.fontTitle)
                }
            }
            
            // MARK: - Review Description
            Text(review)
                .font(.subheadline)
                .foregroundColor(AppColors.subTitle)
                .lineSpacing(4)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding()
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 12)
        )
        .shadow(
            color: .black.opacity(0.08),
            radius: 3,
            x: 0,
            y: 4
        )
    }
}
