//
//  File.swift
//  
//
//  Created by Paolo Moroni on 16/09/2019.
//

import Foundation

public typealias OnResult<T> = (Result<T, Error>) -> Void

public extension Result {

    @discardableResult
    func onFailure(_ whenFailure: (Failure) -> Void) -> Self {
        switch self {
        case .success:
            break
        case .failure(let error):
            whenFailure(error)
        }
        return self
    }

    @discardableResult
    func onSuccess(_ whenSuccess: (Success) -> Void) -> Self {
        switch self {
        case .success(let success):
            whenSuccess(success)
        case .failure:
            break
        }
        return self
    }
}
