//
//  File.swift
//  
//
//  Created by Paolo Moroni on 07/10/2019.
//

import SwiftUI

extension SwiftUI.TextField where Label == Text {

    public init(
        _ title: String,
        text: Binding<String?>,
        onEditingChanged: @escaping (Bool) -> Void = { _ in },
        onCommit: @escaping () -> Void = { }
    ) {
        let unwrappedBinding = Binding<String>(
            get: { text.wrappedValue ?? "" },
            set: { text.wrappedValue = $0 }
        )
        self = SwiftUI.TextField(
            title,
            text: unwrappedBinding,
            onEditingChanged: onEditingChanged,
            onCommit: onCommit
        )
    }
}
