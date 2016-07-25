//
//  CGPointTests.swift
//  Graphicz
//
//  Created by Mariam AlJamea on 7/25/16.
//
//

import XCTest
@testable import Graphicz

class CGPointTests: XCTestCase {
        
    private let accuracy: CGFloat = 0.0001
    
    /**
     Properties
     */
    
    func testMagnitude() {
        
        let point = CGPoint(x: 30, y: 40)
        XCTAssertEqualWithAccuracy(point.magnitude, 50, accuracy: accuracy)
    }
    
    func testMagnitudeSquared() {
        
        let point = CGPoint(x: 30, y: 40)
        XCTAssertEqualWithAccuracy(point.magnitudeSquared, 2500, accuracy: accuracy)
    }
    
    func testAngle() {
        
        let point0 = CGPoint(x: 0, y: 0)
        XCTAssertEqualWithAccuracy(point0.angle, 0, accuracy: accuracy)
        
        let point45 = CGPoint(x: 30, y: 30)
        XCTAssertEqualWithAccuracy(point45.angle, CGFloat(M_PI_4), accuracy: accuracy)
        
        let point90 = CGPoint(x: 0, y: 20)
        XCTAssertEqualWithAccuracy(point90.angle, CGFloat(M_PI_2), accuracy: accuracy)
        
        let point180 = CGPoint(x: -30, y: 0)
        XCTAssertEqualWithAccuracy(point180.angle, CGFloat(M_PI), accuracy: accuracy)
    }
    
    
    /**
     Initializers
     */
    
    func testInitAngle() {
        
        let point0 = CGPoint(angle: 0)
        XCTAssertEqualWithAccuracy(point0.x, 1.0, accuracy: accuracy)
        XCTAssertEqualWithAccuracy(point0.y, 0.0, accuracy: accuracy)
        
        let point90 = CGPoint(angle: CGFloat(M_PI_2))
        XCTAssertEqualWithAccuracy(point90.x, 0.0, accuracy: accuracy)
        XCTAssertEqualWithAccuracy(point90.y, 1.0, accuracy: accuracy)
        
        let point180 = CGPoint(angle: CGFloat(M_PI))
        XCTAssertEqualWithAccuracy(point180.x, -1, accuracy: accuracy)
        XCTAssertEqualWithAccuracy(point180.y, 0, accuracy: accuracy)
    }
}
