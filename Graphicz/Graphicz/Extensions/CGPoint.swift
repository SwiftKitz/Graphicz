//
//  CGPoint.swift
//  Graphicz
//
//  Created by Mariam AlJamea on 7/25/16.
//
//

import CoreGraphics


/**
 Properties
 */
public extension CGPoint {
    
    public var magnitude: CGFloat {
        return sqrt(x*x + y*y)
    }
    
    public var magnitudeSquared: CGFloat {
        return x*x + y*y
    }
    
    /** radians */
    public var angle: CGFloat {
        return atan2(y, x)
    }
}


/**
 Initializers
 */
public extension CGPoint {
    
    public init(angle: CGFloat) {
        self.init(x: cos(angle), y: sin(angle))
    }
}
