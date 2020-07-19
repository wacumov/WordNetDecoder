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
        .package(url: "https://github.com/wacumov/xml2json", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "WordNetDecoder",
            dependencies: ["xml2json"]),
        .testTarget(
            name: "WordNetDecoderTests",
            dependencies: ["WordNetDecoder"]),
    ]
)
