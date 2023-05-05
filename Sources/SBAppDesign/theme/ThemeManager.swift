//
//  ThemeManager.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 19/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit
import BNAppFoundation


public var theme: AppTheme {
    return ThemeManager.shared.theme
}

public var pallete: AnyPallete {
    return theme.pallete
}

public final class ThemeManager {
    public static let shared = ThemeManager.init()
    private init() {}
    
    enum Keys: String, StorageKey {
        var value: String {
            return rawValue
        }
        
        case theme = "SQBBusiness.AppDesign.Theme"
    }
    
    public lazy var themeObservable: Watchable<AppTheme> = .init(value: self.theme)
    
    public private(set) var theme: AppTheme {
        get {
            guard let themeValue = Storage.shared.value(forKey: Keys.theme) as? Int,
                  let theme = AppTheme.init(rawValue: themeValue) else {
                return .system
            }
            return theme
        }
        set {
            Storage.shared.set(newValue.rawValue, forKey: Keys.theme)
            themeObservable.accept(value: newValue)
        }
    }
    
    public func setTheme(_ theme: AppTheme) {
        guard theme != self.theme  else {
            return
        }
        self.theme = theme
        setNeedsThemeUpdate()
    }
    
    public func setNeedsThemeUpdate() {
        reloadWindow()
        setNeedsTabBarThemeUpdate()
        setNeedsTableViewThemeUpdate()
        setNeedsUIButtonThemeUpdate()
        setNeedsUISwitchThemeUpdate()
        setNeedsUILabelThemeUpdate()
    }
}

extension ThemeManager {
    
    //
    private func reloadWindow() {
        let sharedApplication = UIApplication.shared
        let window = sharedApplication.delegate?.window
        window??.subviews.forEach({ (view: UIView) in
            view.removeFromSuperview()
            window??.addSubview(view)
        })
        window??.rootViewController?.setNeedsStatusBarAppearanceUpdate()
    }
    
    //
    private func setNeedsTabBarThemeUpdate() {
        UITabBar.appearance().shadowImage = UIImage(color: .init(hex: "#EFF2F6"))
        UITabBar.appearance().backgroundImage = UIImage(color: .appBackgroundPrimary)
        UITabBar.appearance().th.setTintColor(.primaryBlue)
        UITabBar.appearance().unselectedItemTintColor = pallete.textSecondary
        
        UITabBar.appearance().barTintColor = pallete.backgroundPrimary
        UITabBar.appearance().backgroundColor = pallete.backgroundPrimary
        
        
        UITabBarItem.appearance().setTitleTextAttributes([
            .foregroundColor: pallete.primaryBlue,
        ], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([
            .foregroundColor: pallete.textSecondary,
        ], for: .normal)
    }
    
    //
    private func setNeedsTableViewThemeUpdate() {
        UITableView.appearance().separatorColor = pallete.border
        let tableFooterView = UIView.init()
        tableFooterView.backgroundColor = .clear
        UITableView.appearance().tableFooterView = tableFooterView
        UITableView.appearance().backgroundColor = .clear
        if #available(iOS 15.0, *) {
            UITableView.appearance().sectionHeaderTopPadding = 0
        } else {
            // Fallback on earlier versions
        }
    }
    
    //
    private func setNeedsUIButtonThemeUpdate() {
        UIButton.appearance().tintColor = pallete.primaryBlue
        UIButton.appearance().setTitleColor(pallete.textPrimary, for: .normal)
        UIButton.appearance().titleLabel?.font = UIFont.interFont(ofSize: 16)
        (NSClassFromString("UICalloutBarButton")! as! UIButton.Type).appearance().setTitleColor(UIColor.white, for: .normal)
    }
    
    private func setNeedsUISwitchThemeUpdate() {
        UISwitch.appearance().onTintColor = pallete.primaryBlue
    }
    
    private func setNeedsUILabelThemeUpdate() {
        UILabel.appearance().textColor = pallete.textPrimary
        UILabel.appearance().th.setInterFont(ofSize: 16, style: .regular)
    }
}
