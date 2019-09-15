// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftUtils",
    products: [
        .library(name: "SwiftUtils Lib", targets: ["SwiftUtils"])
    ],
    targets: [
        .target(name: "SwiftUtils", dependencies: []),
        .testTarget(name: "SwiftUtilsTests", dependencies: ["SwiftUtils"])
    ]
)
