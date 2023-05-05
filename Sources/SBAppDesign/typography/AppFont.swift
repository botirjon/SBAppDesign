//
//  JOYDAFont.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 19/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit


public enum AppFont {
    case inter
    case roboto
    
    
    /// Family name of `Self`
    var familyName: String {
        switch self {
        case .inter: return "Inter"
        case .roboto: return "Roboto"
        }
    }
    
    
    /// File name of `Self`
    var fileName: String {
        switch self {
        case .inter: return "Inter"
        case .roboto: return "Roboto"
        }
    }
}


public protocol AppFontStyle {
    var rawValue: String { get }
    static func value(forTextStyle textStyle: AppTextStyle) -> Self
}
