//
//  FontStyles.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 19/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation

public enum InterFontStyle: String, AppFontStyle, CaseIterable {
    case black = "Black"
    case bold = "Bold"
    case extraBold = "ExtraBold"
    case extraLight = "ExtraLight"
    case light = "Light"
    case medium = "Medium"
    case regular = "Regular"
    case semiBold = "SemiBold"
    case thin = "Thin"
    
    public static func value(forTextStyle textStyle: AppTextStyle) -> InterFontStyle {
        switch textStyle {
        case .primaryLargeSemiBold:
            return .semiBold
        case .primaryLargeRegular:
            return .regular
        case .primaryMedium:
            return .medium
        case .primarySmallMedium:
            return .medium
        case .primarySmallRegular:
            return .regular
        case .secondaryMedium:
            return .medium
        case .secondaryRegular:
            return .regular
        case .captionLargeRegular:
            return .regular
        case .captionLargeMedium:
            return .medium
        case .captionSmallRegular:
            return .regular
        }
    }
}

public enum RobotoFontStyle: String, AppFontStyle, CaseIterable {
    case thinItalic = "ThinItalic"
    case black = "Black"
    case blackItalic = "BlackItalic"
    case bold = "Bold"
    case boldItalic = "BoldItalic"
    case italic = "Italic"
    case light = "Light"
    case lightItalic = "LightItalic"
    case medium = "Medium"
    case mediumItalic = "MediumItalic"
    case regular = "Regular"
    case thin = "Thin"
    
    
    public static func value(forTextStyle textStyle: AppTextStyle) -> RobotoFontStyle {
        switch textStyle {
        case .primaryLargeSemiBold:
            return .bold
        case .primaryLargeRegular:
            return .regular
        case .primaryMedium:
            return .medium
        case .primarySmallMedium:
            return .medium
        case .primarySmallRegular:
            return .regular
        case .secondaryMedium:
            return .medium
        case .secondaryRegular:
            return .regular
        case .captionLargeRegular:
            return .regular
        case .captionLargeMedium:
            return .medium
        case .captionSmallRegular:
            return .regular
        }
    }
}


public enum AppFontSize {
    case primaryLarge
    case primaryMedium
    case primarySmall
    case secondary
    case captionLarge
    case captionSmall
    
    public var pointSize: CGFloat {
        switch self {
        case .primaryLarge:
            return 24
        case .primaryMedium:
            return 18
        case .primarySmall:
            return 16
        case .secondary:
            return 14
        case .captionLarge:
            return 14
        case .captionSmall:
            return 12
        }
    }
}


/// <#Description#>
public enum AppTextStyle {
    
    /// Primary / 24px SemiBold
    case primaryLargeSemiBold
    
    /// Primary / 24px Regular
    case primaryLargeRegular
    
    /// Primary / 18px Medium
    case primaryMedium
    
    /// Primary / 16px Medium
    case primarySmallMedium
    
    /// Primary / 16px Regular
    case primarySmallRegular
    
    /// Secondary / 14px Medium
    case secondaryMedium
    
    /// Secondary / 14px Regular
    case secondaryRegular
    
    /// Caption / 14px Regular
    case captionLargeRegular
    
    /// Caption / 14px Medium
    case captionLargeMedium
    
    /// Caption / 12px Regular
    case captionSmallRegular
    
    
    public var fontSize: AppFontSize {
        switch self {
        case .primaryLargeSemiBold:
            return .primaryLarge
        case .primaryLargeRegular:
            return .primaryLarge
        case .primaryMedium:
            return .primaryMedium
        case .primarySmallMedium:
            return .primarySmall
        case .primarySmallRegular:
            return .primarySmall
        case .secondaryMedium:
            return .secondary
        case .secondaryRegular:
            return .secondary
        case .captionLargeRegular:
            return .captionLarge
        case .captionLargeMedium:
            return .captionLarge
        case .captionSmallRegular:
            return .captionSmall
        }
    }
    
    public var styleName: String {
        switch self {
        case .primaryLargeSemiBold:
            return "SemiBold"
        case .primaryLargeRegular:
            return "Regular"
        case .primaryMedium:
            return "Medium"
        case .primarySmallMedium:
            return "Medium"
        case .primarySmallRegular:
            return "Regular"
        case .secondaryMedium:
            return "Medium"
        case .secondaryRegular:
            return "Regular"
        case .captionLargeRegular:
            return "Regular"
        case .captionLargeMedium:
            return "Medium"
        case .captionSmallRegular:
            return "Regular"
        }
    }
}
