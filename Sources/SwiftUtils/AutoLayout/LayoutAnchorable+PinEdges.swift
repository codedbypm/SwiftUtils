//
//  File.swift
//  
//
//  Created by Paolo Moroni on 15/12/2020.
//

import UIKit

public extension LayoutAnchorable {

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
}
