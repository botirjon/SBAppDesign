//
//  Themer+UIView.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension Themer where Base: UIView {
    
    func setBackgroundColor(_ color: ThemeColor, alpha: CGFloat = 1) {
        self.base.backgroundColor = color.value.withAlphaComponent(alpha)
    }
    
    func setBorderColor(_ color: ThemeColor, alpha: CGFloat = 1) {
        self.base.layer.borderColor = color.value.withAlphaComponent(alpha).cgColor
    }
    
    func setTintColor(_ color: ThemeColor, alpha: CGFloat = 1) {
        self.base.tintColor = color.value.withAlphaComponent(alpha)
    }
    
    func setBorder(color: ThemeColor = .border, alpha: CGFloat = 1, width: CGFloat = BoxMetrics.borderWidth) {
        self.base.layer.borderColor = color.value.withAlphaComponent(alpha).cgColor
        self.base.layer.borderWidth = width
    }
}
