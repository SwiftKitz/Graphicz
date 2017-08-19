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
        XCTAssertEqual(vector.magnitude, 50, accuracy: accuracy)
    }
    
    func testMagnitudeSquared() {
        
        let vector = CGVector(dx: 30, dy: 40)
        XCTAssertEqual(vector.magnitudeSquared, 2500, accuracy: accuracy)
    }
    
    func testAngle() {
        
        let vector0 = CGVector(dx: 0, dy: 0)
        XCTAssertEqual(vector0.angle, 0, accuracy: accuracy)
        
        let vector45 = CGVector(dx: 30, dy: 30)
        XCTAssertEqual(vector45.angle, .pi/4, accuracy: accuracy)

        let vector90 = CGVector(dx: 0, dy: 20)
        XCTAssertEqual(vector90.angle, .pi/2, accuracy: accuracy)

        let vector180 = CGVector(dx: -30, dy: 0)
        XCTAssertEqual(vector180.angle, .pi, accuracy: accuracy)
    }
    
    
    /**
        Initializers
    */
    
    func testInitAngle() {
        
        let vector0 = CGVector(angle: 0)
        XCTAssertEqual(vector0.dx, 1.0, accuracy: accuracy)
        XCTAssertEqual(vector0.dy, 0.0, accuracy: accuracy)
        
        let vector90 = CGVector(angle: .pi/2)
        XCTAssertEqual(vector90.dx, 0.0, accuracy: accuracy)
        XCTAssertEqual(vector90.dy, 1.0, accuracy: accuracy)
        
        let vector180 = CGVector(angle: .pi)
        XCTAssertEqual(vector180.dx, -1, accuracy: accuracy)
        XCTAssertEqual(vector180.dy, 0, accuracy: accuracy)
    }
}

