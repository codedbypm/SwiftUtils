//
//  File.swift
//  
//
//  Created by Paolo Moroni on 13/11/2020.
//

import Foundation

public struct Empty: Decodable {

}

extension Empty {
    static var data: Data? {
        return Dictionary<String, Any>().httpBody
    }
}
