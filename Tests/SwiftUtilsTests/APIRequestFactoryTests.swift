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

    func testThat_whenSchemeIsHTTP_portDefaultsTo80() {
        // Arrange
        sut = MockAPIRequestFactory()
        sut.returnedScheme = "http"
        
        // Act
        let port = sut.port

        // Assert
        XCTAssertEqual(port, 80)
    }

    func testThat_whenSchemeIsHTTPS_portDefaultsTo443() {
        // Arrange
        sut = MockAPIRequestFactory()
        sut.returnedScheme = "https"

        // Act
        let port = sut.port

        // Assert
        XCTAssertEqual(port, 443)
    }}
