//
//  JOYDADesign.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import BNAppFoundation

public final class AppDesign {
    
    public static let shared = AppDesign.init()
    private init() {}
    
    // Theme
    public func setTheme(_ theme: AppTheme) {
        ThemeManager.shared.setTheme(theme)
    }
    
    public func getTheme() -> AppTheme {
        return ThemeManager.shared.theme
    }
    
    public func setNeedsThemeUpdate() {
        ThemeManager.shared.setNeedsThemeUpdate()
    }
}

extension AppDesign {
    enum Keys: String {
        var value: String {
            return rawValue
        }
        
        case theme = "SQB-BUSINESS.AppDesign.Theme"
    }
}
