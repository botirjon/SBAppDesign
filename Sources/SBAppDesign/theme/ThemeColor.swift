//
//  ThemeColor.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public protocol ThemeColorProtocol {
    var value: UIColor { get }
}

public enum ThemeColor: ThemeColorProtocol {
    // MARK: - Text
    case textPrimary
    case textSecondary
    
    // MARK: - Background
    case backgroundPrimary
    case backgroundSecondary
    
    // MARK: - Generic
    case primaryBlue
    case secondaryBlue
    
    case appRed
    case appGreen
    
    case border
    case clear
    
    case custom(UIColor)
}

extension ThemeColor {
    public var value: UIColor {
        switch self {
        case .textPrimary:
            return pallete.textPrimary
        case .textSecondary:
            return pallete.textSecondary
            
            // MARK: - Background
        case .backgroundPrimary:
            return pallete.backgroundPrimary
        case .backgroundSecondary:
            return pallete.backgroundSecondary
            
            // MARK: - Generic
        case .primaryBlue:
            return pallete.primaryBlue
        case .secondaryBlue:
            return pallete.secondaryBlue
            
        case .appRed:
            return pallete.appRed
        case .appGreen:
            return pallete.appGreen
            
        case .border:
            return pallete.border
            
        case .clear:
            return UIColor.clear
            
        case .custom(let color): return color
        }
    }
}


