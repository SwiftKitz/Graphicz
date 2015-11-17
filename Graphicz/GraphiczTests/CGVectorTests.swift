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
    
    private let accuracy: CGFloat = 0.0001
    
    /**
        Properties
    */
    
    func testMagnitude() {
        
        let vector = CGVector(dx: 30, dy: 40)
        XCTAssertEqualWithAccuracy(vector.magnitude, 50, accuracy: accuracy)
    }
    
    func testAngle() {
        
        let vector0 = CGVector(dx: 0, dy: 0)
        XCTAssertEqualWithAccuracy(vector0.angle, 0, accuracy: accuracy)
        
        let vector45 = CGVector(dx: 30, dy: 30)
        XCTAssertEqualWithAccuracy(vector45.angle, CGFloat(M_PI_4), accuracy: accuracy)

        let vector90 = CGVector(dx: 0, dy: 20)
        XCTAssertEqualWithAccuracy(vector90.angle, CGFloat(M_PI_2), accuracy: accuracy)

        let vector180 = CGVector(dx: -30, dy: 0)
        XCTAssertEqualWithAccuracy(vector180.angle, CGFloat(M_PI), accuracy: accuracy)
    }
    
    
    /**
        Initializers
    */
    
    func testInitAngle() {
        
        let vector0 = CGVector(angle: 0)
        XCTAssertEqualWithAccuracy(vector0.dx, 1.0, accuracy: accuracy)
        XCTAssertEqualWithAccuracy(vector0.dy, 0.0, accuracy: accuracy)
        
        let vector90 = CGVector(angle: CGFloat(M_PI_2))
        XCTAssertEqualWithAccuracy(vector90.dx, 0.0, accuracy: accuracy)
        XCTAssertEqualWithAccuracy(vector90.dy, 1.0, accuracy: accuracy)
        
        let vector180 = CGVector(angle: CGFloat(M_PI))
        XCTAssertEqualWithAccuracy(vector180.dx, -1, accuracy: accuracy)
        XCTAssertEqualWithAccuracy(vector180.dy, 0, accuracy: accuracy)
    }
}

