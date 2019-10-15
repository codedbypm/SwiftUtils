//
//  File.swift
//  
//
//  Created by Paolo Moroni on 15/10/2019.
//

import SwiftUI

extension Image {

    public init?(data: Data) {
        guard let uiImage = UIImage(data: data) else { return nil }
        self = Image(uiImage: uiImage)
    }
}
