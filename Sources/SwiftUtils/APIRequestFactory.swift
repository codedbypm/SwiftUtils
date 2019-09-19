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

    func request(ofType _: T) -> URLRequest
    func url(forRequestType _: T) -> URL
    func path(forRequestType _: T) -> String
    func query(forRequestType _: T) -> String
    func headers(forRequestType _: T) -> [String: String]
    func httpMethod(forRequestType _: T) -> String
    func httpBody(forRequestType _: T) -> Data?
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
        components.path = path(forRequestType: type)
        components.query = query(forRequestType: type)

        return components.url!
    }
}
