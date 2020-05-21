import XCTest
@testable import SwiftUtils

final class SwiftUtilsTests: XCTestCase {

    static var allTests = [
        ("whenSchemeIsHTTP_portDefaultsTo80", APIRequestFactoryTests.testThat_whenSchemeIsHTTP_portDefaultsTo80),
        ("whenSchemeIsHTTPS_portDefaultsTo443", APIRequestFactoryTests.testThat_whenSchemeIsHTTPS_portDefaultsTo443),

    ]
}
