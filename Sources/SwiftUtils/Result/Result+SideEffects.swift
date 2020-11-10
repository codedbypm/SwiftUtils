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

    func onFailure(_ whenFailure: () -> Void) {
        guard case .failure = self else { return }
        whenFailure()
    }

    func onSuccess(_ whenSuccess: () -> Void) {
        guard case .success = self else { return }
        whenSuccess()
    }
    
    var error: Failure? {
        switch self {
        case .success: return nil
        case .failure(let error):
            return error
        }
    }
}
