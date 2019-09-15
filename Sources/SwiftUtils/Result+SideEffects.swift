//
//  File.swift
//  
//
//  Created by Paolo Moroni on 16/09/2019.
//

import Foundation

public extension Result {

    public func onFailure(_ whenFailure: (Failure) -> Void) {
        switch self {
        case .success:
            return
        case .failure(let error):
            whenFailure(error)
        }
    }

    public func onSuccess(_ whenSuccess: (Success) -> Void) {
        switch self {
        case .success(let success):
            whenSuccess(success)
            return
        case .failure:
            return
        }
    }
}
