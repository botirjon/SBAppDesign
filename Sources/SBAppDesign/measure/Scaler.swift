//
//  Scaler.swift
//  AppDesign
//
//  Created by Botirjon Nasridinov on 08/02/22.
//

import UIKit

public class Scaler {
    
    /// Block init
    private init() {}
    
    
    // MARK: - METHODS
    
    @nonobjc public class func scaledFontSize(for size: CGFloat) -> CGFloat {
        return scaledDimension(forDimension: size, along: .x)
    }
    
    @nonobjc public class func scaledDimension(forDimension dimension: CGFloat, along axis: ScalingAxis) -> CGFloat {
        switch axis {
        case .y:
            return round(dimension * Scale.heightRatio)
            
        case .x:
            return round(dimension * Scale.widthRatio)
        }
    }
    
    @nonobjc public class func scaledVertical(_ dimension: CGFloat) -> CGFloat {
        return round(dimension * Scale.heightRatio)
    }
    
    @nonobjc public class func scaledHorizontal(_ dimension: CGFloat) -> CGFloat {
        return round(dimension * Scale.widthRatio)
    }
    
    @nonobjc public class func scaledWidth(forWidth width: CGFloat) -> CGFloat {
        return round(width * Scale.widthRatio)
    }
    
    @nonobjc public class func scaledHeight(forHeight height: CGFloat) -> CGFloat {
        return round(height * Scale.heightRatio)
    }
    
    @nonobjc public class func dimension(forRatio ratio: CGFloat, along axis: ScalingAxis) -> CGFloat {
        let actualSize: CGSize = UIScreen.main.bounds.size
        switch axis {
        case .y:
            return actualSize.height * ratio
            
        case .x:
            return actualSize.width * ratio
        }
    }
    
    @nonobjc public class func scaledSize(forDimension dimension: CGFloat, along axis: ScalingAxis) -> CGSize {
        var length: CGFloat
        
        switch axis {
        case .y:
            length = round(dimension * Scale.heightRatio)
            
        case .x:
            length = round(dimension * Scale.widthRatio)
        }
        
        return CGSize(width: length, height: length)
    }
    
    /**
     Recalculates width and height
     
     Recalculates width according to device width and height according to device height
     */
    @nonobjc public class func scaledSize(forSize size: CGSize, along axis: ScalingAxis? = nil) -> CGSize {
        let scaledWidth: CGFloat = scaledDimension(forDimension: size.width, along: axis ?? .x)
        let scaledHeight: CGFloat = scaledDimension(forDimension: size.height, along: axis ?? .y)
        return CGSize(width: scaledWidth, height: scaledHeight)
    }
    
}


// MARK: - RatioSide

public extension Scaler {
    
    enum ScalingAxis {
        case x
        case y
    }
}


fileprivate struct Scale {
    private static let _designArtboardSize = CGSize(width: 375, height: 812)
    private static let _deviceScreenSize = UIScreen.main.bounds.size
    
    static var heightRatio: CGFloat { _deviceScreenSize.height/_designArtboardSize.height }
    static var widthRatio: CGFloat { _deviceScreenSize.width/_designArtboardSize.width }
}

