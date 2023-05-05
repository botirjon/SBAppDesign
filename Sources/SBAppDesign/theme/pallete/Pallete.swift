//
//  Pallete.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit
import BNAppFoundation

public protocol AnyPallete {
    // MARK: - Text
    var textPrimary: UIColor { get }
    var textSecondary: UIColor { get }
    
    // MARK: - Background
    var backgroundPrimary: UIColor { get }
    var backgroundSecondary: UIColor { get }
    
    // MARK: - Generic
    var primaryBlue: UIColor { get }
    var secondaryBlue: UIColor { get }
    
    var appRed: UIColor { get }
    var appGreen: UIColor { get }
    
    var border: UIColor { get }
}

extension AnyPallete {
    // MARK: - Text
    var textPrimary: UIColor { .appTextPrimary }
    var textSecondary: UIColor { .appTextSecondary }
    
    // MARK: - Background
    var backgroundPrimary: UIColor { .appBackgroundPrimary }
    var backgroundSecondary: UIColor { .appBackgroundSecondary }
    
    // MARK: - Generic
    var primaryBlue: UIColor { .appPrimaryBlue }
    var secondaryBlue: UIColor { .appSecondaryBlue }
    
    var appRed: UIColor { .appRed }
    var appGreen: UIColor { .appGreen }
    
    var border: UIColor { .appBorder }
}
