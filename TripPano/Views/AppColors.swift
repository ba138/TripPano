import SwiftUI

// A centralized place for app colors, similar to Flutter's `Colors.primaryColor`.
// Usage examples:
// - AppColors.primary
// - Color.appPrimary
// - AppColors.background
// If you have named colors in your Asset Catalog, you can replace the hardcoded values
// with Color("YourColorName").

public enum AppColors {
    // Core palette
    public static let primary: Color = Color(red: 0.10, green: 0.53, blue: 0.96) // A blue tone
    public static let secondary: Color = Color(red: 0.98, green: 0.63, blue: 0.20) // An orange tone
    public static let accent: Color = Color(red: 0.20, green: 0.80, blue: 0.60) // A teal/green accent

    // Grays
    public static let textPrimary: Color = Color(white: 0.10)
    public static let textSecondary: Color = Color(white: 0.40)
    public static let background: Color = Color(white: 0.98)
    public static let surface: Color = Color(white: 1.0)
    public static let separator: Color = Color(white: 0.85)

    // Semantic states
    public static let success: Color = Color(red: 0.17, green: 0.74, blue: 0.33)
    public static let warning: Color = Color(red: 0.95, green: 0.77, blue: 0.06)
    public static let error: Color = Color(red: 0.90, green: 0.23, blue: 0.21)
}

public extension Color {
    // Convenience aliases mirroring Flutter-like naming
    static var appPrimary: Color { AppColors.primary }
    static var appSecondary: Color { AppColors.secondary }
    static var appAccent: Color { AppColors.accent }

    static var appTextPrimary: Color { AppColors.textPrimary }
    static var appTextSecondary: Color { AppColors.textSecondary }
    static var appBackground: Color { AppColors.background }
    static var appSurface: Color { AppColors.surface }
    static var appSeparator: Color { AppColors.separator }

    static var appSuccess: Color { AppColors.success }
    static var appWarning: Color { AppColors.warning }
    static var appError: Color { AppColors.error }
}
