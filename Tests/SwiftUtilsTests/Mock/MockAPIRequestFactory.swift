//
//  File.swift
//  
//
//  Created by Paolo Moroni on 21/05/2020.
//

import Foundation
@testable import SwiftUtils

enum MockAPIRequestType {
}

struct MockAPIRequestFactory: APIRequestFactory {
    typealias T = MockAPIRequestType

    var host: String? { nil }

    var scheme: String { "" }

    func path(forRequestType _: MockAPIRequestType) -> String {
        ""
    }

    func query(forRequestType _: MockAPIRequestType) -> String? {
        nil
    }

    func headers(forRequestType _: MockAPIRequestType) -> [String : String] {
        [:]
    }

    func httpMethod(forRequestType _: MockAPIRequestType) -> String {
        ""
    }

    func httpBody(forRequestType _: MockAPIRequestType) -> Data? {
        nil
    }

}
