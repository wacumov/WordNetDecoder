// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WordNetDecoder",
    products: [
        .library(
            name: "WordNetDecoder",
            targets: ["WordNetDecoder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/MaxDesiatov/XMLCoder.git", from: "0.11.1")
    ],
    targets: [
        .target(
            name: "WordNetDecoder",
            dependencies: ["XMLCoder"]),
        .testTarget(
            name: "WordNetDecoderTests",
            dependencies: ["WordNetDecoder"]),
    ]
)
