// 
// Project:  
// Copyright © 2021 codedby.pm. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public extension UICollectionView {

    func dequeueCell<T: Reusable>(at indexPath: IndexPath) -> T {
        guard
            let cell = dequeueReusableCell(
                withReuseIdentifier: T.reuseIdentifier,
                for: indexPath
            ) as? T
        else {
            fatalError(
                "Fatal: could not dequeue a cell of type \(String(describing: T.self))"
            )
        }
        return cell
    }
}

#endif
