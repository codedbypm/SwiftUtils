// 
// Project: SwiftUtils
// Copyright © 2021 codedby.pm. All rights reserved.
//

import Foundation

public extension Data {

    /// A pretty-printed version of the JSON data represented by the receiver
    var prettyJSON: String? {
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: self, options: [])
            let data = try JSONSerialization.data(
                withJSONObject: jsonObject,
                options: [.sortedKeys, .prettyPrinted, .withoutEscapingSlashes]
            )
            return String(data: data, encoding:.utf8)
        }
        catch {
            return nil
        }
    }
}
