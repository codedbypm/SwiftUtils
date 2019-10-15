//
//  File.swift
//  
//
//  Created by Paolo Moroni on 15/10/2019.
//

import SwiftUI

extension Image {

    /// Create an `Image` from a `Data` object
    /// - Parameter data: The data object containing the image data.
    public init?(data: Data) {
        guard let uiImage = UIImage(data: data) else { return nil }
        self = Image(uiImage: uiImage)
    }
}
