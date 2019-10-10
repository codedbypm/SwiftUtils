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
    public var wrapped: Binding<Value?> {
        return Binding<Value?>(self)
    }
}

extension Binding where Value == Bool {

    /// Returns an instance by toggling the original Value
    public func toggled() -> Binding<Value> {
        return Binding(
            get: { !self.wrappedValue },
            set: { self.wrappedValue = !$0 }
        )
    }
}
