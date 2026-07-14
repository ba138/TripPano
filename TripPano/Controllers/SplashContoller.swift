import SwiftUI

final class SplashController {

    func startTimer(completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            withAnimation(.easeInOut(duration: 0.5)) {
                completion()
            }
        }
    }
}
