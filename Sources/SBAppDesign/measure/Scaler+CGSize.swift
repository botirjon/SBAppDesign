//
//  Scaler+CGSize.swift
//  AppDesign
//
//  Created by Botirjon Nasridinov on 16/02/22.
//

import UIKit

public extension CGSize {
    
    var scaled: CGSize {
        return Scaler.scaledSize(forSize: self)
    }
    
    static func scaling(_ size: CGSize, along axis: Scaler.ScalingAxis? = nil) -> CGSize {
        return Scaler.scaledSize(forSize: size, along: axis)
    }
}
