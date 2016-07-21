
# Graphicz :art:

![Version](https://img.shields.io/badge/version-prerelease-orange.svg)
[![Travis CI](https://travis-ci.org/SwiftKitz/Graphicz.svg?branch=master)](https://travis-ci.org/SwiftKitz/Graphicz)
![Swift](https://img.shields.io/badge/swift-2.1-blue.svg)
![Platforms](https://img.shields.io/badge/platform-ios%20%7C%20osx%20%7C%20watchos%20%7C%20tvos-lightgrey.svg)

Light-weight, operator-overloading-free complements to CoreGraphics!

_Even though I shipped it with my app, I still need to invest the time to set this up, and finalize the API. Contributors welcome!_

## Highlights

+ __Operator Overloading Free:__<br />
It's just an opinion, but this is a crucial difference.
  
+ __Ready For Contributors:__<br />
Basic additions to `CGRect` and other structs added to show contributors the way! PRs welcome! _(I certainly will be submitting some throughout my career)_

+ __Full Test Coverage:__<br />
This library requires full test coverage in order to eliminate human error as much as possible.

## Features

You can try them in the playground shipped with the framework!

#### CGRect

__Convenient properties:__

```swift
let rect = CGRect(x: 10, y: 10, width: 80, height: 40)
rect.center         // x: 50, y: 30
rect.aspectRatio    // 2
```

__Update functions:__

```swift
var newRect = rect.update(width: 60)
newRect.updateInPlace(x: 20)
newRect.updateInPlace(origin: CGPoint.zero)
```

__Edge functions:__

```swift
newRect.insetEdges(left: 20)    // Push in the left edge
newRect.insetEdges(bottom: -5)  // Push down the bottom
```

#### CGVector

__Convenient properties:__

```swift
let vector = CGVector(dx: -5, dy: 0)
vector.angle        // π
vector.magnitude    // 5
vector.magnitudeSquared  // 25
```

__Convenient initializers:__

```swift
let unitVector = CGVector(angle: CGFloat(M_PI_2))
unitVector.dx   // 0
unitVector.dy   // 1
```

## Motivation

Every once in a while, one might find themself writing layout code manually. Auto layout may work for many, but for the rest of us, doing manual layout calculation is something we do regularly. It does become tedious very quickly, but with the help of such a convenient set of additions, things tend to get simpler and more fun, even.

## Author

Mazyod ([@Mazyod](http://twitter.com/mazyod))

## License

Graphicz is released under the MIT license. See LICENSE for details.
