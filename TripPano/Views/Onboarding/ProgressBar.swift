import SwiftUI

struct DividerView: View {
    let progress: String
    
    var currentProgress: Int {
        Int(progress) ?? 1
    }
    
    var body: some View {
        HStack {
            ProgressCircle(number: 1, isActive: currentProgress >= 1)
            
            ProgressLine(isActive: currentProgress >= 2)
            
            ProgressCircle(number: 2, isActive: currentProgress >= 2)
            
            ProgressLine(isActive: currentProgress >= 3)
            
            ProgressCircle(number: 3, isActive: currentProgress >= 3)
        }
    }
}


struct ProgressCircle: View {
    let number: Int
    let isActive: Bool
    
    var body: some View {
        Circle()
            .frame(width: 30, height: 30)
            .foregroundColor(isActive ? AppColors.primary : Color.gray.opacity(0.3))
            .overlay {
                Text("\(number)")
                    .foregroundColor(isActive ? AppColors.white : AppColors.subTitle)
            }
    }
}


struct ProgressLine: View {
    let isActive: Bool
    
    var body: some View {
        Divider()
            .frame(maxWidth: .infinity)
            .frame(height: 1)
            .background(isActive ? AppColors.primary : Color.gray.opacity(0.3))
    }
}
