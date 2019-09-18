//
//  APIRequestFactory.swift
//  
//
//  Created by Paolo Moroni on 18/09/2019.
//

import Foundation

public protocol APIRequestFactory {
    associatedtype T

    var scheme: String { get }
    var host: String { get }
    var basePath: String { get }

    func request(ofType type: T) -> URLRequest
    func url(forRequestType type: T) -> URL
    func path(forRequestType type: T) -> String
    func query(forRequestType type: T) -> String
    func headers(forRequestType type: T) -> [String: String]
    func httpMethod(forRequestType type: T) -> String
    func httpBody(forRequestType type: T) -> Data?
}

public extension APIRequestFactory {

    func request(ofType type: T) -> URLRequest {
        let requestURL = url(forRequestType: type)

        let request = NSMutableURLRequest(url: requestURL)
        request.allHTTPHeaderFields = headers(forRequestType: type)
        request.httpMethod = httpMethod(forRequestType: type)
        request.httpBody = httpBody(forRequestType: type)

        return request as URLRequest
    }

    func url(forRequestType type: T) -> URL {

        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = basePath + path(forRequestType: type)
        components.query = query(forRequestType: type)

        return components.url!
    }
}
