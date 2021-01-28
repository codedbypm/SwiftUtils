// 
// Project:  
// Copyright © 2021 codedby.pm. All rights reserved.
//

import Foundation

public protocol Reusable {
    static var reuseIdentifier: String { get }
}

public extension Reusable {
    static var reuseIdentifier: String { String(describing: self) }
}


#if canImport(UIKit)
import UIKit

extension UITableViewCell: Reusable {}

extension UICollectionViewCell: Reusable {}

#endif
