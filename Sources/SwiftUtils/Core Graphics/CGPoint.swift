// 
// Project: Creo 
// Copyright © 2021 codedby.pm. All rights reserved.
//

import CoreGraphics

extension CGPoint {

    /// Returns a new  `CGPoint` whose `x` and `y` values equal the receiver `x` and `y`  values multiplied by -1
    /// - Returns: `CGPoint(x: -x, y: -y)`
    func opposite() -> CGPoint {
        return CGPoint(x: -x, y: -y)
    }

    /// Returns a new  `CGPoint` whose `x` value equals the receiver `x` value multiplied by -1
    /// - Returns: `CGPoint(x: -x, y: y)`
    func oppositeX() -> CGPoint {
        return CGPoint(x: -x, y: y)
    }

    /// Returns a new  `CGPoint` whose `y` value equals the receiver `y` value multiplied by -1
    /// - Returns: `CGPoint(x: x, y: -y)`
    func oppositeY() -> CGPoint {
        return CGPoint(x: x, y: -y)
    }
}
