// 
// Project:  
// Copyright © 2021 codedby.pm. All rights reserved.
//

import Foundation

public extension Date {

    /// A type defining a consecutive period of 3 months
    enum Quarter: Int {
        /// The period from January 1st to March 31st
        case q1 = 1
        /// The period from April 1st to June 30th
        case q2 = 2
        /// The period from July 1st to September 30th
        case q3 = 3
        /// The period from October 1st to December 31st
        case q4 = 4

        public var monthsRange: ClosedRange<Int> {
            switch self {
            case .q1:
                return 1...3
            case .q2:
                return 4...6
            case .q3:
                return 7...9
            case .q4:
                return 10...12
            }
        }
    }
}

extension Date.Quarter: CaseIterable {}

extension Date.Quarter: CustomStringConvertible {
    public var description: String {
        switch self {
        case .q1:
            return "Q1"
        case .q2:
            return "Q2"
        case .q3:
            return "Q3"
        case .q4:
            return "Q4"
        }
    }
}


//extension Date.Quarter: StringInterpolationProtocol {
//    public init(literalCapacity: Int, interpolationCount: Int) {
//        <#code#>
//    }
//
//    public mutating func appendLiteral(_ literal: String) {
//        <#code#>
//    }
//
//    public typealias StringLiteralType = String
//
//
//}


//extension Date.Quarter: RawRepresentable {
//
//    public typealias RawValue = ClosedRange<Int>
//
//
//    public init?(rawValue: ClosedRange<Int>) {
//        switch rawValue {
//        case 1...3:
//            self = .q1
//        case 4...6:
//            self = .q2
//        case 7...9:
//            self = .q3
//        case 10...12:
//            self = .q4
//        default:
//            return nil
//        }
//    }
//}
