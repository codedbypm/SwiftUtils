//
//  File.swift
//  
//
//  Created by Paolo Moroni on 23/09/2019.
//

import Foundation

public extension URLRequest {

    var httpBodyDictionary: [String: String] {
        guard let httpBody = httpBody else {
            return [:]
        }

        let decodedHTTPBody = try? JSONSerialization.jsonObject(
            with: httpBody,
            options: []
        )

        guard let body = decodedHTTPBody as? [String: String] else {
            return [:]
        }

        return body
    }
}
