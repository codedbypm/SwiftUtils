// 
// Project:  
// Copyright © 2021 codedby.pm. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public extension UIView {

    /// Adds an array of views to the end of the receiver’s list of subviews.
    /// - Parameter subviews: The views to be added.
    static func autoLayoutInstance<T: UIView>() -> T {
        let view = T.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
#endif
