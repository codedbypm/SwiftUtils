// 
// Project: SwiftUtils
// Copyright © 2021 codedby.pm. All rights reserved.
//

/// A protocol for an object that can be converted into a core object
public protocol CoreObjectConvertible {
    associatedtype T
    var coreObject: T { get }
}
