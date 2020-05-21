//
//  File.swift
//  
//
//  Created by Paolo Moroni on 21/05/2020.
//

import Foundation
@testable import SwiftUtils
import XCTest

class APIRequestFactoryTests: XCTestCase {
    var sut: MockAPIRequestFactory!

    func testThat_portDefaultsTo80() {
        // Arrange
        sut = MockAPIRequestFactory()

        // Act
        let port = sut.port

        // Assert
        XCTAssertEqual(port, 80)
    }
}
