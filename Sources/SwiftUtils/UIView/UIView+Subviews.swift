//
//  File.swift
//  
//
//  Created by Paolo Moroni on 15/12/2020.
//

import UIKit

public extension UIView {

    /// Adds an array of views to the end of the receiver’s list of subviews.
    /// - Parameter subviews: The views to be added.
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach(addSubview)
    }
}

