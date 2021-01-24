//
//  Dictionary+URL.swift
//  
//
//  Created by Paolo Moroni on 16/09/2019.
//

import Foundation

public extension Dictionary where Key: StringProtocol, Value: StringProtocol {

    /// Returns a `String` representing the receiver as an HTTP query
    var httpQuery: String {
        return
            map { return "\($0.key)=\($0.value)" }
            .joined(separator: "&")
    }
}

public extension Dictionary where Key: StringProtocol, Value == Any {

    /// The `Data` representation of self when serialized in JSON format
    var httpBody: Data? {
        return try? JSONSerialization.data(withJSONObject: self, options: [])
    }

    /// A pretty-printed version of self
    var prettyJSON: String? {
        return try? JSONSerialization
            .data(
                withJSONObject: self,
                options: [.sortedKeys, .prettyPrinted]
            )
            .prettyJSON
    }
}
