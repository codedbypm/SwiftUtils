//
//  File.swift
//  
//
//  Created by Paolo Moroni on 15/12/2020.
//

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit
#endif

public extension LayoutAnchorable {

    func pinEdges(to anchorable: Self) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: anchorable.topAnchor),
            leadingAnchor.constraint(equalTo: anchorable.leadingAnchor),
            bottomAnchor.constraint(equalTo: anchorable.bottomAnchor),
            trailingAnchor.constraint(equalTo: anchorable.trailingAnchor)
        ])
    }
}
