//
//  CALayer+Ext.swift
//  AppDesign
//
//  Created by Bilal Bakhrom on 17/01/2020.
//  Copyright © 2020 SANOAT QURILISH BANK. All rights reserved.
//

import UIKit
import BNAppFoundation

public extension CALayer {

    @nonobjc class var baseBackgroundGradientLayer: CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            pallete.backgroundPrimary.cgColor,
            pallete.backgroundPrimary.cgColor
        ]
        gradientLayer.locations = [0, 0.53]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: -1, c: 1, d: 0, tx: -0.5, ty: 1))
        gradientLayer.frame = UIScreen.main.bounds.insetBy(dx: -0.5*UIScreen.main.bounds.size.width, dy: -0.5*UIScreen.main.bounds.size.height)
        return gradientLayer
    }

    @nonobjc class var splashBackgroundGradientLayer: CAGradientLayer {
        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [
//            UIColor(hex: "#EEEFF4", alpha: 1).cgColor,
//            UIColor(hex: "#FFFFFF", alpha: 0).cgColor
//        ]
        gradientLayer.colors = [
            pallete.backgroundPrimary.cgColor,
            pallete.backgroundPrimary.cgColor
        ]
        gradientLayer.locations = [0.26, 0.76]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: 1, c: -1, d: 0, tx: 1, ty: 0))
        gradientLayer.frame = UIScreen.main.bounds.insetBy(dx: -0.5*UIScreen.main.bounds.size.width, dy: -0.5*UIScreen.main.bounds.size.height)
        return gradientLayer
    }
}
