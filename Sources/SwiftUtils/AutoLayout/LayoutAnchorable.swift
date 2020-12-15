//
//  File.swift
//  
//
//  Created by Paolo Moroni on 15/12/2020.
//

import UIKit

public protocol LayoutAnchorable {
    var topAnchor: NSLayoutYAxisAnchor { get }
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    var bottomAnchor: NSLayoutYAxisAnchor { get }
    var trailingAnchor: NSLayoutXAxisAnchor { get }
}

extension UIView: LayoutAnchorable {}
extension UILayoutGuide: LayoutAnchorable {}
