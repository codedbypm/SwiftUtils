//
//  APIRequestHandler.swift
//  
//
//  Created by Paolo Moroni on 10/11/2020.
//

import Foundation

public enum APIRequestError: Error {
    case noData
    case decodingFailed(Error)
}

public protocol APIRequestHandler {
    var session: URLSession { get }
    
    func sendRequest<DTO: Decodable>(
        _ request: URLRequest,
        whenDone: @escaping OnResult<DTO>
    )
}

public extension APIRequestHandler {

    func sendRequest<DTO: Decodable>(
        _ request: URLRequest,
        whenDone: @escaping OnResult<DTO>
    ) {
        let task = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                whenDone(.failure(self.handleFailure(error)))
            } else if let data = data {
                whenDone(self.handleData(data))
            } else {
                whenDone(.failure(APIRequestError.noData))
            }
        }
        task.resume()
    }

    private func handleFailure(_ error: Error) -> Error {
        return error
    }

    private func handleData<DTO:Decodable>(_ data: Data) -> Result<DTO, Error> {
        print("JSON string: \(String(data: data, encoding: .utf8) as Any)")

        do {
            if data.isEmpty, let emptyData = Empty.data {
                let dto = try JSONDecoder().decode(DTO.self, from: emptyData)
                return .success(dto)
            } else {
                let dto = try JSONDecoder().decode(DTO.self, from: data)
                return .success(dto)
            }
        }
        catch let error {
            return .failure(APIRequestError.decodingFailed(error))
        }
    }
}