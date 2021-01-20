//
//  APIRequestHandler.swift
//  
//
//  Created by Paolo Moroni on 10/11/2020.
//

import Combine
import Foundation
import os.log

public protocol APIRequestHandler {
    var session: URLSession { get }
    var isLoggingEnabled: Bool { get }

    func apiRequestPublisher<DTO: Decodable>(_ : URLRequest) -> AnyPublisher<DTO, Error>
}

public extension APIRequestHandler {

    var isLoggingEnabled: Bool { false }

    func apiRequestPublisher<DTO: Decodable>(
        _ request: URLRequest
    ) -> AnyPublisher<DTO, Error> {
        return session
            .dataTaskPublisher(for: request)
            .handleEvents(receiveOutput: debugOutput)
            .map { $0.data }
            .compactMap { $0.isEmpty ? Empty.data : $0 }
            .decode(type: DTO.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

    private func debugOutput(data: Data, response: URLResponse) {
        guard isLoggingEnabled else { return }
        guard let response = response as? HTTPURLResponse else { return }
        if let url = response.url?.absoluteString {
            os_log(.debug, "Request %@", url)
        }
        os_log(.debug, "Status code %d", response.statusCode)
        os_log(.debug, "Body: %@", String(data: data, encoding: .utf8) ?? "nil")
    }
}
