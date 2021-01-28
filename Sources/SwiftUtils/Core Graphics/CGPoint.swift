// 
// Project: Creo 
// Copyright © 2021 codedby.pm. All rights reserved.
//

import CoreGraphics

public extension CGPoint {

    /// Returns a new  `CGPoint` whose `x` and `y` values equal the receiver `x` and `y`  values multiplied by -1
    /// - Returns: `CGPoint(x: -x, y: -y)`
    var withOppositeCoordinates: CGPoint {
        CGPoint(x: -x, y: -y)
    }

    /// Returns a new  `CGPoint` whose `x` value equals the receiver `x` value multiplied by -1
    /// - Returns: `CGPoint(x: -x, y: y)`
    var withOppositeX: CGPoint {
        CGPoint(x: -x, y: y)
    }

    /// Returns a new  `CGPoint` whose `y` value equals the receiver `y` value multiplied by -1
    /// - Returns: `CGPoint(x: x, y: -y)`
    var withOppositeY: CGPoint {
        CGPoint(x: x, y: -y)
    }
}
