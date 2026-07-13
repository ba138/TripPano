import SwiftUI

// Convenience initializers to create Color from hex values.
// Supports:
// - 3-digit RGB (e.g. "#373")
// - 4-digit RGBA (e.g. "#373C")
// - 6-digit RGB (e.g. "347433" or "#347433")
// - 8-digit RGBA (e.g. "347433CC")

public extension Color {
    /// Initialize with a 24-bit RGB hex integer and optional alpha.
    init(hex: UInt, alpha: Double = 1.0) {
        let r = Double((hex >> 16) & 0xFF) / 255.0
        let g = Double((hex >> 8) & 0xFF) / 255.0
        let b = Double(hex & 0xFF) / 255.0
        self = Color(red: r, green: g, blue: b, opacity: alpha)
    }

    /// Initialize with a hex string. Accepts forms like "#RGB", "#RGBA", "#RRGGBB", "#RRGGBBAA", or without '#'.
    init?(hexString: String) {
        // Strip non-hex characters (keep 0-9, a-f, A-F)
        let cleaned = hexString
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")
        let length = cleaned.count

        func hexToUInt(_ s: Substring) -> UInt? {
            UInt(s, radix: 16)
        }

        var r: UInt = 0, g: UInt = 0, b: UInt = 0, a: UInt = 255

        switch length {
        case 3: // RGB (12-bit)
            // e.g., "373" -> RR, GG, BB by duplicating each nibble
            let chars = Array(cleaned)
            guard
                let rNib = hexToUInt(Substring(String(repeating: chars[0], count: 2))),
                let gNib = hexToUInt(Substring(String(repeating: chars[1], count: 2))),
                let bNib = hexToUInt(Substring(String(repeating: chars[2], count: 2)))
            else { return nil }
            r = rNib; g = gNib; b = bNib
        case 4: // RGBA (16-bit)
            let chars = Array(cleaned)
            guard
                let rNib = hexToUInt(Substring(String(repeating: chars[0], count: 2))),
                let gNib = hexToUInt(Substring(String(repeating: chars[1], count: 2))),
                let bNib = hexToUInt(Substring(String(repeating: chars[2], count: 2))),
                let aNib = hexToUInt(Substring(String(repeating: chars[3], count: 2)))
            else { return nil }
            r = rNib; g = gNib; b = bNib; a = aNib
        case 6: // RRGGBB (24-bit)
            guard
                let hexVal = UInt(cleaned, radix: 16)
            else { return nil }
            r = (hexVal >> 16) & 0xFF
            g = (hexVal >> 8) & 0xFF
            b = hexVal & 0xFF
        case 8: // RRGGBBAA (32-bit)
            guard
                let hexVal = UInt(cleaned, radix: 16)
            else { return nil }
            r = (hexVal >> 24) & 0xFF
            g = (hexVal >> 16) & 0xFF
            b = (hexVal >> 8) & 0xFF
            a = hexVal & 0xFF
        default:
            return nil
        }

        self = Color(
            .sRGB,
            red: Double(r) / 255.0,
            green: Double(g) / 255.0,
            blue: Double(b) / 255.0,
            opacity: Double(a) / 255.0
        )
    }
}



public enum AppColors {
    // Core palette
    public static let primary: Color = Color(hex: 0x347433)
    public static let secondary: Color = Color(hex: 0xFFC107) // An orange tone
    public static let fontTitle: Color = Color(hex: 0x1D1D1D) // A teal/green accent

    public static let subTitle: Color = Color(hex: 0x999999)
    public static let textfield: Color = Color(hex: 0xDEDEDE)
 
}



public extension Color {
    static var appPrimary: Color { AppColors.primary }
    static var appSecondary: Color { AppColors.secondary }
    static var fontTitle: Color { AppColors.fontTitle }

    static var subTitle: Color { AppColors.subTitle }
    
}
