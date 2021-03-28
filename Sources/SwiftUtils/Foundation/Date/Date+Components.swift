// 
// Project:  
// Copyright © 2021 codedby.pm. All rights reserved.
//

import Foundation

public extension Date {

    /// Returns the receiver's year
    var year: Int { Calendar.autoupdatingCurrent.component(.year, from: self) }

    /// Returns the receiver's month
    var month: Int { Calendar.autoupdatingCurrent.component(.month, from: self) }

    /// Returns the receiver's day
    var day: Int { Calendar.autoupdatingCurrent.component(.day, from: self) }
}

