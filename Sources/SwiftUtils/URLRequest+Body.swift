//
//  File.swift
//  
//
//  Created by Paolo Moroni on 23/09/2019.
//

import Foundation

public extension URLRequest {

    var httpBodyDictionary: [String: Any] {
        guard let httpBody = httpBody else {
            return [:]
        }

        let decodedHTTPBody = try? JSONSerialization.jsonObject(
            with: httpBody,
            options: []
        )

        guard let body = decodedHTTPBody as? [String: Any] else {
            return [:]
        }

        return body
    }
}
