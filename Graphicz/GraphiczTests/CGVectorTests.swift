//
//  CGVectorTests.swift
//  Graphicz
//
//  Created by Mazyad Alabduljaleel on 11/16/15.
//
//

import XCTest
@testable import Graphicz


class CGVectorTests: XCTestCase {
    
    /**
        Properties
    */
    
    func testMagnitude() {
        
        let vector = CGVector(dx: 30, dy: 40)
        XCTAssertEqual(vector.magnitude, 50)
    }
    
    func testAngle() {
        
        let vector0 = CGVector(dx: 0, dy: 0)
        XCTAssertEqual(vector0.angle, 0)
        
        let vector45 = CGVector(dx: 30, dy: 30)
        XCTAssertEqual(vector45.angle, CGFloat(M_PI_4))

        let vector90 = CGVector(dx: 0, dy: 20)
        XCTAssertEqual(vector90.angle, CGFloat(M_PI_2))

        let vector180 = CGVector(dx: -30, dy: 0)
        XCTAssertEqual(vector180.angle, CGFloat(M_PI))
    }
    
    
    /**
        Initializers
    */
    
    func testInitAngle() {
        
        let vector0 = CGVector(angle: 0)
        XCTAssertEqual(vector0, CGVector(dx: 1.0, dy: 0.0))
        
        let vector90 = CGVector(angle: CGFloat(M_PI_2))
        XCTAssertEqualWithAccuracy(vector90.dx, 0.0, accuracy: 0.0001)
        XCTAssertEqualWithAccuracy(vector90.dy, 1.0, accuracy: 0.0001)
        
        let vector180 = CGVector(angle: CGFloat(M_PI))
        XCTAssertEqualWithAccuracy(vector180.dx, -1, accuracy: 0.0001)
        XCTAssertEqualWithAccuracy(vector180.dy, 0, accuracy: 0.0001)
    }
}

