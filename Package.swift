// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CloudKitCodable",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "CloudKitCodable",
            targets: ["CloudKitCodable"]),
    ],
    dependencies: [
        .package(url: "https://github.com/eyvallah/OpenCloudKit.git", from: "0.7.5"),
    ],
    targets: [
        .target(
            name: "CloudKitCodable",
            dependencies: ["OpenCloudKit"]),
        .testTarget(
            name: "CloudKitCodableTests",
            dependencies: ["CloudKitCodable"]),
    ]
)
