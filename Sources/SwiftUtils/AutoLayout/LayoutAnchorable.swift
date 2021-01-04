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

public protocol LayoutAnchorable {
    var topAnchor: NSLayoutYAxisAnchor { get }
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    var bottomAnchor: NSLayoutYAxisAnchor { get }
    var trailingAnchor: NSLayoutXAxisAnchor { get }
}

#if canImport(UIKit)

extension UIView: LayoutAnchorable {}
extension UILayoutGuide: LayoutAnchorable {}

#elseif canImport(AppKit) && !targetEnvironment(macCatalyst)

extension NSView: LayoutAnchorable {}
extension NSLayoutGuide: LayoutAnchorable { }

#endif
