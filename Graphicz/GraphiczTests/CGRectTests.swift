//
//  CGRectTests.swift
//  Graphicz
//
//  Created by Mazyad Alabduljaleel on 11/16/15.
//
//

import XCTest
@testable import Graphicz


class CGRectTests: XCTestCase {
    
    /**
        Properties
    */
    
    func testCenter() {
        
        let rect = CGRect(x: -23.345, y: 290.33, width: 321, height: 0.002)
        XCTAssertEqual(rect.center.x, rect.midX)
        XCTAssertEqual(rect.center.y, rect.midY)
    }
    
    func testAspectRatio() {
        
        let rect = CGRect(x: -23.345, y: 290.33, width: 321, height: 0.002)
        XCTAssertEqual(rect.aspectRatio, rect.width / rect.height)
    }
    
    /**
        Update
    */
    
    func testUpdateX() {
        
        var rect = CGRect(x: -1, y: -1, width: 1, height: 1)
        let newRect = rect.update(x: 10)
        rect.origin.x = 10
        
        XCTAssertEqual(newRect, rect)
    }
    
    func testUpdateY() {
        
        var rect = CGRect(x: -1, y: -1, width: 1, height: 1)
        let newRect = rect.update(y: 10)
        rect.origin.y = 10
        
        XCTAssertEqual(newRect, rect)
    }
    
    func testUpdateWidth() {
        
        var rect = CGRect(x: -1, y: -1, width: 1, height: 1)
        let newRect = rect.update(width: 10)
        rect.size.width = 10
        
        XCTAssertEqual(newRect, rect)
    }
    
    func testUpdateHeight() {
        
        var rect = CGRect(x: -1, y: -1, width: 1, height: 1)
        let newRect = rect.update(height: 10)
        rect.size.height = 10
        
        XCTAssertEqual(newRect, rect)
    }
    
    func testUpdateOrigin() {
        
        var rect = CGRect(x: -1, y: -1, width: 1, height: 1)
        let newRect = rect.update(origin: CGPoint(x: 5, y: 5))
        rect.origin = CGPoint(x: 5, y: 5)
        
        XCTAssertEqual(newRect, rect)
    }
    
    func testUpdateSize() {
        
        var rect = CGRect(x: -1, y: -1, width: 1, height: 1)
        let newRect = rect.update(size: CGSize(width: 5, height: 5))
        rect.size = CGSize(width: 5, height: 5)
        
        XCTAssertEqual(newRect, rect)
    }
    
    func testUpdateInPlace() {
        
        var rect = CGRect(x: -1, y: -1, width: 1, height: 1)
        var newRect = rect
        
        newRect.updateInPlace(x: 6, y: 10, width: 8, height: 5)
        rect = CGRect(x: 6, y: 10, width: 8, height: 5)
        
        XCTAssertEqual(newRect, rect)
    }
    
    /**
        Edges
    */
    
    func testInsetTopEdge() {
        
        var rect = CGRect(x: -10, y: -10, width: 20, height: 20)
        let newRect = rect.insetEdges(top: 5)
        rect.updateInPlace(y: -5, height: 15)
        
        XCTAssertEqual(rect, newRect)
    }
    
    func testInsetLeftEdge() {
        
        var rect = CGRect(x: -10, y: -10, width: 20, height: 20)
        let newRect = rect.insetEdges(left: 5)
        rect.updateInPlace(x: -5, width: 15)
        
        XCTAssertEqual(rect, newRect)
    }
    
    func testInsetBottomEdge() {
        
        var rect = CGRect(x: -10, y: -10, width: 20, height: 20)
        let newRect = rect.insetEdges(bottom: 5)
        rect.updateInPlace(height: 15)
        
        XCTAssertEqual(rect, newRect)
    }
    
    func testInsetRightEdge() {
        
        var rect = CGRect(x: -10, y: -10, width: 20, height: 20)
        let newRect = rect.insetEdges(right: 5)
        rect.updateInPlace(width: 15)
        
        XCTAssertEqual(rect, newRect)
    }
    
    func testNegativeInsets() {
        
        var rect = CGRect(x: -10, y: -10, width: 20, height: 20)
        let newRect = rect.insetEdges(right: -5, left: -5)
        rect.insetInPlace(dx: -5, dy: 0)
        
        XCTAssertEqual(rect, newRect)
    }
}
