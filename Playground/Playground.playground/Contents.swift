
import UIKit
import Graphicz


//: # Graphicz
//: ### Light-weight, operator-overloading-free complements to CoreGraphics

//: ## Features
//: #### CGRect
//: Convenient properties

let rect = CGRect(x: 10, y: 10, width: 80, height: 40)
rect.center         // x: 50, y: 30
rect.aspectRatio    // 2

//: Update functions

var newRect = rect.update(width: 60)
newRect.updateInPlace(x: 20)
newRect.updateInPlace(origin: CGPoint.zero)

//: Edge functions

newRect.insetEdges(left: 20)    // Push in the left edge
newRect.insetEdges(bottom: -5)  // Push down the bottom

//: #### CGVector
//: Convenient properties

let vector = CGVector(dx: -5, dy: 0)
vector.angle        // π
vector.magnitude    // 5

//: Convenient initializers

let unitVector = CGVector(angle: CGFloat(M_PI_2))
unitVector.dx   // 0
unitVector.dy   // 1
