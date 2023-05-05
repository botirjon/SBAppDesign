//
//  Extensions+UIFont.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 19/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension UIFont {
    
    static func appFont(_ font: AppFont, ofSize size: CGFloat, style: AppFontStyle) -> UIFont {
        let name = String.init(format: "%@-%@", font.familyName, style.rawValue)
        return UIFont.init(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func appFont(_ font: AppFont, ofSize size: AppFontSize, style: AppFontStyle) -> UIFont {
        let name = String.init(format: "%@-%@", font.familyName, style.rawValue)
        return UIFont.init(name: name, size: size.pointSize) ?? UIFont.systemFont(ofSize: size.pointSize)
    }
    
    static func interFont(ofSize size: CGFloat, style: InterFontStyle = .regular) -> UIFont {
        let scaledSize = Scaler.scaledFontSize(for: size)
        return appFont(.inter, ofSize: scaledSize, style: style)
    }
    
    static func interFont(ofSize size: AppFontSize, style: InterFontStyle = .regular) -> UIFont {
        let scaledSize = Scaler.scaledFontSize(for: size.pointSize)
        return appFont(.inter, ofSize: scaledSize, style: style)
    }
    
    static func interFont(ofTextStyle textStyle: AppTextStyle) -> UIFont {
        return .interFont(ofSize: textStyle.fontSize, style: InterFontStyle.value(forTextStyle: textStyle))
    }
    
    static func robotoFont(ofSize size: CGFloat, style: RobotoFontStyle = .regular) -> UIFont {
        let scaledSize = Scaler.scaledFontSize(for: size)
        return appFont(.roboto, ofSize: scaledSize, style: style)
    }
    
    static func robotoFont(ofSize size: AppFontSize, style: RobotoFontStyle = .regular) -> UIFont {
        let scaledSize = Scaler.scaledFontSize(for: size.pointSize)
        return appFont(.roboto, ofSize: scaledSize, style: style)
    }
    
    static func robotoFont(ofTextStyle textStyle: AppTextStyle) -> UIFont {
        .robotoFont(ofSize: textStyle.fontSize, style: RobotoFontStyle.value(forTextStyle: textStyle))
    }
}
