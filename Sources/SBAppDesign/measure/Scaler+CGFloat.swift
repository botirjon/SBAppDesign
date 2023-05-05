//
//  Scaler+CGFloat.swift
//  AppDesign
//
//  Created by Botirjon Nasridinov on 16/02/22.
//

import UIKit


public extension CGFloat {
    
    func scaled(along axis: Scaler.ScalingAxis) -> CGFloat {
        return Scaler.scaledDimension(forDimension: self, along: axis)
    }
    
    static func scaling(_ dimension: CGFloat, along axis: Scaler.ScalingAxis) -> CGFloat {
        return Scaler.scaledDimension(forDimension: dimension, along: axis)
    }
    
    static func vertical(scaling dimension: CGFloat) -> CGFloat {
        .scaling(dimension, along: .y)
    }
    
    static func horizontal(scaling dimension: CGFloat) -> CGFloat {
        .scaling(dimension, along: .x)
    }
    
    static func width(scaling dimension: CGFloat) -> CGFloat {
        .scaling(dimension, along: .x)
    }
    
    static func height(scaling dimension: CGFloat) -> CGFloat {
        .scaling(dimension, along: .y)
    }
    
    static func hSpace(scaling dimension: CGFloat) -> CGFloat {
        .scaling(dimension, along: .x)
    }
    
    static func vSpace(scaling dimension: CGFloat) -> CGFloat {
        .scaling(dimension, along: .y)
    }
    
    var asScaledFontSize: CGFloat {
        return Scaler.scaledFontSize(for: self)
    }
}
