//
//  CGVector.swift
//  Graphicz
//
//  Created by Mazyad Alabduljaleel on 11/16/15.
//
//

import CoreGraphics


/**
    Properties
*/
public extension CGVector {
    
    public var magnitude: CGFloat {
        return hypot(dx, dy)
    }
    
    public var magnitudeSquared: CGFloat {
        return dx*dx + dy*dy
    }
    
    /** radians */
    public var angle: CGFloat {
        return atan2(dy, dx)
    }
}


/**
    Initializers
*/
public extension CGVector {
    
    /** unit vector with angle in radians */
    public init(angle: CGFloat) {
        self.init(dx: cos(angle), dy: sin(angle))
    }
}
