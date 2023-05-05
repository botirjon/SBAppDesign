//
//  UIColor.swift
//  AppDesign
//
//  Created by Bilal Bakhrom on 17/01/2020.
//  Copyright © 2020 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    
    static func asset(named name: String) -> UIColor {
        return .init(named: name, in: Bundle.module, compatibleWith: nil) ?? UIColor()
    }
    
    var light: UIColor {
        self.resolvedColor(with: .init(userInterfaceStyle: .light))
    }
    
    var dark: UIColor {
        self.resolvedColor(with: .init(userInterfaceStyle: .dark))
    }
    
    var current: UIColor {
        self.resolvedColor(with: .current)
    }
}

// Theme
public extension UIColor {
    
    static var appTextPrimary: UIColor { .asset(named: "textPrimary")}
    static var appTextSecondary: UIColor { .asset(named: "textSecondary")}
    
    static var appBackgroundPrimary: UIColor { .asset(named: "backgroundPrimary")}
    static var appBackgroundSecondary: UIColor { .asset(named: "backgroundSecondary")}
    
    static var appPrimaryBlue: UIColor { .asset(named: "primaryBlue")}
    static var appSecondaryBlue: UIColor { .asset(named: "secondaryBlue")}
    
    static var appRed: UIColor { .asset(named: "appRed")}
    static var appGreen: UIColor { .asset(named: "appGreen")}
    
    static var appBorder: UIColor { .asset(named: "border") }
}
