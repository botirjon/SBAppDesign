//
//  GlobalContant.swift
//  AppDesign
//
//  Created by Bilal Bakhrom on 06/01/2020.
//  Copyright © 2020 SANOAT QURILISH BANK. All rights reserved.
//

import UIKit

public struct BoxMetrics {
    public static let paddingX16 = Scaler.scaledDimension(forDimension: 16, along: .x)
    public static let paddingY16 = Scaler.scaledDimension(forDimension: 16, along: .y)
    public static let paddingY13 = Scaler.scaledDimension(forDimension: 13, along: .y)
    public static let paddingY10 = Scaler.scaledDimension(forDimension: 10, along: .y)
    public static let marginX20 = Scaler.scaledDimension(forDimension: 20, along: .x)
    public static let marginY20 = Scaler.scaledDimension(forDimension: 20, along: .y)
    public static let cornerRadius10 = Scaler.scaledDimension(forDimension: 10, along: .y)
    public static let cornerRadius8 = Scaler.scaledDimension(forDimension: 8, along: .y)
    public static let cornerRadius6 = Scaler.scaledDimension(forDimension: 6, along: .y)
    public static let cornerRadius4 = Scaler.scaledDimension(forDimension: 4, along: .y)
    
    
    /// Generic border width for views.
    public static let borderWidth = Scaler.scaledDimension(forDimension: 0.5, along: .y)
    
    public enum SafeArea {
        public static let horizontal = Scaler.scaledDimension(forDimension: 16, along: .x)
        public static let vertical = Scaler.scaledDimension(forDimension: 16, along: .y)
        
        public static let horizontalInsets: UIEdgeInsets = .init(top: 0, left: horizontal, bottom: 0, right: horizontal)
        
        public static let verticalInsets: UIEdgeInsets = .init(top: vertical, left: 0, bottom: vertical, right: 0)
        
        public static let insets: UIEdgeInsets = .init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }
}
