//
//  File.swift
//  
//
//  Created by Paolo Moroni on 13/10/2019.
//

import Foundation

extension Optional where Wrapped == String {

    func orEmpty() -> String {
        return orDefault("")
    }
}

extension Optional {

    func orDefault(_ value: Wrapped) -> Wrapped {
        if let self = self { return self }
        else { return value }
    }
}
