//
//  Themer+UITextField.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension Themer where Base: UITextField {
    
    func setTextColor(_ color: ThemeColor, alpha: CGFloat = 1) {
        self.base.textColor = color.value.withAlphaComponent(alpha)
    }
    
    // NEW
    func setAppFont(_ font: AppFont, ofSize size: CGFloat, style: AppFontStyle) {
        self.base.font = .appFont(font, ofSize: size, style: style)
    }
    
    func setInterFont(ofSize size: CGFloat, style: InterFontStyle = .regular) {
        self.base.font = .interFont(ofSize: size, style: style)
    }
    
    func setRobotoFont(ofSize size: CGFloat, style: RobotoFontStyle = .regular) {
        self.base.font = .robotoFont(ofSize: size, style: style)
    }
    
    func setAppFont(_ font: AppFont, ofSize size: AppFontSize, style: AppFontStyle) {
        self.base.font = .appFont(font, ofSize: size, style: style)
    }
    
    func setInterFont(ofSize size: AppFontSize, style: InterFontStyle = .regular) {
        self.base.font = .interFont(ofSize: size, style: style)
    }
    
    func setRobotoFont(ofSize size: AppFontSize, style: RobotoFontStyle = .regular) {
        self.base.font = .robotoFont(ofSize: size, style: style)
    }
    
    func setInterFont(ofTextStyle textStyle: AppTextStyle = .primarySmallRegular) {
        self.base.font = .interFont(ofTextStyle: textStyle)
    }
    
    func setRobotoFont(ofTextStyle textStyle: AppTextStyle = .primarySmallRegular) {
        self.base.font = .robotoFont(ofTextStyle: textStyle)
    }
}
