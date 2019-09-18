//
//  APIRequestFactory.swift
//  
//
//  Created by Paolo Moroni on 18/09/2019.
//

import Foundation

public protocol APIRequestFactory {
    associatedtype T

    func request(forRequestType type: T) -> URLRequest
    func url(forRequestType type: T) -> URL
    func query(forRequestType type: T) -> String
    func headers(forRequestType type: T) -> [String: String]
    func httpMethod(forRequestType type: T) -> String
    func httpBody(forRequestType type: T) -> Data?
}
