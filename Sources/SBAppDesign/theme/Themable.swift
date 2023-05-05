//
//  Themable.swift
//  AppDesign
//
//  Created by Botir Nasridinov on 18/12/2019.
//  Copyright © 2019 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public class Themer<Base> {
    let base: Base
    
    init(_ base: Base) {
        self.base = base
    }
}

public protocol Themable {
    associatedtype T
    var th: T { get }
}

public extension Themable {
    var th: Themer<Self> {
        return Themer<Self>.init(self)
    }
}

extension UIView: Themable {}
