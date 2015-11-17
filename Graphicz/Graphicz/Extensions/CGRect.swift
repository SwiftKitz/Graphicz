//
//  CGRect.swift
//  Graphicz
//
//  Created by Mazyad Alabduljaleel on 11/16/15.
//
//

import CoreGraphics


/**
    Properties
*/
public extension CGRect {

    /** (midX, midY) */
    public var center: CGPoint {
        return CGPoint(x: midX, y: midY)
    }
    
    /** width / height */
    public var aspectRatio: CGFloat {
        return width / height
    }
}


/**
    Update
 */
public extension CGRect {

    /** update a single property: rect.update(y: 10) */
    func update(x x: CGFloat? = nil, y: CGFloat? = nil, width: CGFloat? = nil, height: CGFloat? = nil) -> CGRect {
        
        var rect = self
        rect.updateInPlace(x: x, y: y, width: width, height: height)
        
        return rect
    }
    
    /** update a single property: rect.update(y: 10) */
    mutating func updateInPlace(x x: CGFloat? = nil, y: CGFloat? = nil, width: CGFloat? = nil, height: CGFloat? = nil) {
        
        origin.x = x ?? origin.x
        origin.y = y ?? origin.y
        
        size.width = width ?? size.width
        size.height = height ?? size.height
    }
    
    /** update a single property: rect.update(size: newSize) */
    func update(origin origin: CGPoint? = nil, size: CGSize? = nil) -> CGRect {
        
        var rect = self
        rect.updateInPlace(origin: origin, size: size)
        
        return rect
    }
    
    /** update a single property: rect.update(size: newSize) */
    mutating func updateInPlace(origin origin: CGPoint? = nil, size: CGSize? = nil) {
        
        self.origin = origin ?? self.origin
        self.size = size ?? self.size
    }
}


/**
    Edges
*/
public extension CGRect {

    /** inset edges, modifying origin and size as appropriate */
    public mutating func insetEdgesInPlace(top top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) {
        
        origin.x += left
        origin.y += top
        
        size.width -= (right + left)
        size.height -= (bottom + top)
    }
    
    /** inset edges, modifying origin and size as appropriate */
    public func insetEdges(top top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> CGRect {
        
        var newRect = self
        newRect.insetEdgesInPlace(top: top, left: left, bottom: bottom, right: right)
        
        return newRect
    }
}
