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
    var port: Int { get }
    
    /// The system uses the value returned by **host(forRequestType _: T) -> String** only when **host**
    /// returns nil. In that case, the developer is expected to implement the method **host(forRequestType _: T) -> String**
    /// otherwise the host will be set to an empy string for all type of requests. 
    var host: String? { get }
    func host(forRequestType _: T) -> String

    func request(ofType _: T) -> URLRequest
    func url(forRequestType _: T) -> URL
    func path(forRequestType _: T) -> String
    func query(forRequestType _: T) -> String?
    func headers(forRequestType _: T) -> [String: String]
    func httpMethod(forRequestType _: T) -> String
    func httpBody(forRequestType _: T) -> Data?
}

public enum HTTPPort: Int {
    case port80 = 80
    case port443 = 443
}

public extension APIRequestFactory {

    var port: Int {
        switch scheme {
        case "https": return HTTPPort.port443.rawValue
        case "http": return HTTPPort.port80.rawValue
        default: fatalError()
        }
    }
    
    func host(forRequestType _: T) -> String {
        return ""
    }

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
        components.port = port
        components.host = host ?? host(forRequestType: type)
        components.path = path(forRequestType: type)
        components.query = query(forRequestType: type)

        return components.url!
    }
}
