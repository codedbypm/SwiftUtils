// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftUtils",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_14)
    ],
    products: [
        .library(name: "SwiftUtils Lib", targets: ["SwiftUtils"])
    ],
    targets: [
        .target(name: "SwiftUtils", dependencies: []),
        .testTarget(name: "SwiftUtilsTests", dependencies: ["SwiftUtils"])
    ]
)
