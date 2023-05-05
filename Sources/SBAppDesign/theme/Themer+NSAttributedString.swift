//
//  Themer+NSAttributedString.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

extension Themer where Base: NSAttributedString {
    
    
    /// Returns a new attributed string applying a background color to text in `range`.
    /// - Parameter color: A color to set as background color.
    /// - Parameter range: Range of text to apply background color.
    /// - Returns: A new `NSAttributedString` instance with background color of its text in `range` set to `color`.
    func applying(backgroundColor color: ThemeColor, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.backgroundColor, value: color.value, range: range)
        return mutableAttributedString
    }
    
    /// Returns a new attributed string applying a foreground color to text in `range`.
    /// - Parameter color: A color to set as foreground color.
    /// - Parameter range: Range of text to apply foreground color.
    /// - Returns: A new `NSAttributedString` instance with foreground color of its text in `range` set to `color`.
    func applying(foregroundColor color: ThemeColor, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: color.value, range: range)
        return mutableAttributedString
    }
    
    func settingAppFont(_ font: AppFont, ofSize size: CGFloat, style: AppFontStyle, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.appFont(font, ofSize: size, style: style), range: range)
        return mutableAttributedString
    }
    
    func settingAppFont(_ font: AppFont, ofSize size: AppFontSize, style: AppFontStyle, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.appFont(font, ofSize: size.pointSize, style: style), range: range)
        return mutableAttributedString
    }
    
    func settingInterFont(ofSize size: CGFloat, style: InterFontStyle, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.interFont(ofSize: size, style: style), range: range)
        return mutableAttributedString
    }
    
    func settingInterFont(ofSize size: AppFontSize, style: InterFontStyle, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.interFont(ofSize: size.pointSize, style: style), range: range)
        return mutableAttributedString
    }
    
    func settingInterFont(ofSize size: AppFontSize, ofTextStyle textStyle: AppTextStyle, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.interFont(ofTextStyle: textStyle), range: range)
        return mutableAttributedString
    }
    
    func settingRobotoFont(ofSize size: CGFloat, style: RobotoFontStyle, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.robotoFont(ofSize: size, style: style), range: range)
        return mutableAttributedString
    }
    
    func settingRobotoFont(ofSize size: AppFontSize, style: RobotoFontStyle, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.robotoFont(ofSize: size.pointSize, style: style), range: range)
        return mutableAttributedString
    }
    
    func settingRobotoFont(ofTextStyle textStyle: AppTextStyle, in range: NSRange) -> NSAttributedString {
        let string = base.string
        let mutableAttributedString = NSMutableAttributedString.init(string: string)
        mutableAttributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.robotoFont(ofTextStyle: textStyle), range: range)
        return mutableAttributedString
    }
}
