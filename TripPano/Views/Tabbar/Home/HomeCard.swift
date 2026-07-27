import SwiftUI

struct HomeCard: View {

    @State var home: HomeModel

    var body: some View {

        VStack(alignment: .leading, spacing: 12) {

            AsyncImage(url: URL(string: home.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFill()

            } placeholder: {
                ProgressView()
                    .frame(maxWidth: .infinity)
            }
            .frame(height: 180)
            .frame(maxWidth: .infinity)
            .clipped()
            .cornerRadius(18)


            HStack(alignment: .top) {

                VStack(alignment: .leading, spacing: 6) {

                    Text(home.name)
                        .font(.headline)
                        .foregroundColor(AppColors.fontTitle)

                    HStack(spacing: 5) {

                        Image(systemName: "star.fill")
                            .foregroundColor(AppColors.primary)

                        Text("(\(String(format: "%.1f", home.reviews))k Reviews)")
                            .font(.caption)
                            .foregroundColor(AppColors.subTitle)

                        
                    }
                }

                Spacer()
            }


            HStack {

                Text(home.price)
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(AppColors.primary)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 10)
                    .background(AppColors.primary.opacity(0.12))
                    .cornerRadius(10)

                Spacer()


                Button {
                    withAnimation(.spring()) {
                        home.isFavorite.toggle()
                    }

                } label: {

                    Circle()
                        .fill(
                            home.isFavorite
                            ? AppColors.primary
                            : Color.gray.opacity(0.15)
                        )
                        .frame(width: 44, height: 44)
                        .overlay {

                            Image(systemName:
                                    home.isFavorite
                                  ? "heart.fill"
                                  : "heart"
                            )
                            .foregroundColor(
                                home.isFavorite
                                ? .white
                                : AppColors.subTitle
                            )
                        }
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(22)
        .shadow(
            color: .black.opacity(0.08),
            radius: 8,
            x: 0,
            y: 5
        )
    }
}
