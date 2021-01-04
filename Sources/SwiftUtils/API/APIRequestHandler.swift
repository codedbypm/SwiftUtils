//
//  APIRequestHandler.swift
//  
//
//  Created by Paolo Moroni on 10/11/2020.
//

import Combine
import Foundation

public protocol APIRequestHandler {
    var session: URLSession { get }

    func apiRequestPublisher<DTO: Decodable>(_ : URLRequest) -> AnyPublisher<DTO, Error>
}

public extension APIRequestHandler {

    func apiRequestPublisher<DTO: Decodable>(
        _ request: URLRequest
    ) -> AnyPublisher<DTO, Error> {
        return session
            .dataTaskPublisher(for: request)
            .map { $0.data }
            .compactMap { $0.isEmpty ? Empty.data : $0 }
            .decode(type: DTO.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
