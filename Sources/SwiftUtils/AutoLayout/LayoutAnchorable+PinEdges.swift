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

#if canImport(UIKit)
    func pinEdges(to view: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

    func pinEdges(to layoutGuide: UILayoutGuide) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: layoutGuide.topAnchor),
            leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor),
            bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor),
            trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor)
        ])
    }

#elseif canImport(AppKit) && !targetEnvironment(macCatalyst)

    func pinEdges(to view: NSView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

    func pinEdges(to layoutGuide: NSLayoutGuide) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: layoutGuide.topAnchor),
            leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor),
            bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor),
            trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor)
        ])
    }

#endif
}
