//
//  File.swift
//  
//
//  Created by Paolo Moroni on 07/10/2019.
//

import Foundation
import SwiftUI

extension Binding {

    /// Returns an instance by wrapping the base value to an optional value.
    var wrapped: Binding<Value?> {
        return Binding<Value?>(self)
    }
}
