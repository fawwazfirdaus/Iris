import SwiftUI

/// Convenience helpers for using app fonts with correct PostScript names.
///
/// Available families (from runtime dump):
/// - Aeonik → ["Aeonik-Bold", "Aeonik-Regular"]
/// - Gestura Headline TRIAL → ["GesturaHeadlineTRIAL-Regular", "GesturaHeadlineTRIAL-Semibold"]
extension Font {
    /// Returns Aeonik at the given size and approximate weight.
    /// Falls back to Regular when an exact weight is not available.
    static func aeonik(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        let postScriptName: String
        switch weight {
        case .bold, .heavy, .black:
            postScriptName = "Aeonik-Bold"
        default:
            postScriptName = "Aeonik-Regular"
        }
        return .custom(postScriptName, size: size)
    }

    /// Returns Gestura Headline TRIAL at the given size and approximate weight.
    /// Uses Semibold for bold-ish weights as there is no Bold cut.
    static func gestura(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        let postScriptName: String
        switch weight {
        case .semibold, .bold, .heavy, .black:
            postScriptName = "GesturaHeadlineTRIAL-Semibold"
        default:
            postScriptName = "GesturaHeadlineTRIAL-Regular"
        }
        return .custom(postScriptName, size: size)
    }
}


