// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CloudKitCodable",
    platforms: [
        .macOS("12.0")
    ],
    products: [
        .library(
            name: "CloudKitCodable",
            targets: ["CloudKitCodable"]),
    ],
    dependencies: [
        .package(url: "https://github.com/levinli303/OpenCloudKit.git", .revision("a882fe8a5e3557dc39e90a84e7599d8b5768ceb8")),
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
