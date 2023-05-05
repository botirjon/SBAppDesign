//
//  Themer+UIButton.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 25/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension Themer where Base: UIButton {
    
    func setTitleColor(_ color: ThemeColor, for state: UIControl.State) {
        base.setTitleColor(color.value, for: state)
    }
    
    // NEW
    func setAppFont(_ font: AppFont, ofSize size: CGFloat, style: AppFontStyle) {
        self.base.titleLabel?.font = .appFont(font, ofSize: size, style: style)
    }
    
    func setAppFont(_ font: AppFont, ofSize size: AppFontSize, style: AppFontStyle) {
        self.base.titleLabel?.font = .appFont(font, ofSize: size.pointSize, style: style)
    }
    
    func setInterFont(ofSize size: CGFloat, style: InterFontStyle = .regular) {
        self.base.titleLabel?.font = .interFont(ofSize: size, style: style)
    }
    
    func setInterFont(ofSize size: AppFontSize, style: InterFontStyle = .regular) {
        self.base.titleLabel?.font = .interFont(ofSize: size, style: style)
    }
    
    func setInterFont(ofTextStyle textStyle: AppTextStyle = .primarySmallRegular) {
        self.base.titleLabel?.font = .interFont(ofTextStyle: textStyle)
    }
    
    func setRobotoFont(ofSize size: CGFloat, style: RobotoFontStyle = .regular) {
        self.base.titleLabel?.font = .robotoFont(ofSize: size, style: style)
    }
    
    func setRobotoFont(ofSize size: AppFontSize, style: RobotoFontStyle = .regular) {
        self.base.titleLabel?.font = .robotoFont(ofSize: size, style: style)
    }
    
    func setRobotoFont(ofTextStyle textStyle: AppTextStyle = .primarySmallRegular) {
        self.base.titleLabel?.font = .robotoFont(ofTextStyle: textStyle)
    }
}
