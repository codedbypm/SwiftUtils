//
//  File.swift
//  
//
//  Created by Paolo Moroni on 16/09/2019.
//

import Foundation

public extension Dictionary where Key: StringProtocol, Value: StringProtocol {

    var httpQuery: String {
        return
            map { return "\($0.key)=\($0.value)" }
            .joined(separator: "&")
    }
}

public extension Dictionary where Value == Any? {
    var httpBody: Data? {
        return try? JSONSerialization.data(withJSONObject: self, options: [])
    }
}
