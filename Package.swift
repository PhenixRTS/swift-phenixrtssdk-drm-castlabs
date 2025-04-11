// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PhenixSdkDrmCastLabs",
    platforms: [.iOS(.v12), .tvOS(.v12),],
    products: [
        .library(name: "PhenixSdkDrmCastLabs",
                 targets: ["PhenixSdkDrmCastLabsWithDependencies"]),
    ],
    dependencies: [
        .package(url: "https://github.com/phenixrts/swift-phenixrtssdk", from: "2025.0.1-dee89c9-20250411T085613335-beta.50"),
        .package(url: "https://github.com/PhenixRTSVendors/swift-castlabs-isobmff-player", from: "1.0.4"),
    ],
    targets: [
        .binaryTarget(
                name: "PhenixSdkDrmCastLabs",
                url: "https://dl.phenixrts.com/sdk/apple/2025.0.1-dee89c9-20250411T085613335/PhenixSdkDrmCastLabs.xcframework.zip",
                checksum: "19e9ab338d5c2f6cf1a92720e733d29f348ed5e47059d1ba836804c095745d54"),
        .target(
                name: "PhenixSdkDrmCastLabsWithDependencies",
                dependencies: ["PhenixSdkDrmCastLabs", .product(name: "PhenixSdk", package: "swift-phenixrtssdk"), .product(name: "CastLabsIsoBmffPlayer", package: "swift-castlabs-isobmff-player")]),
    ]
)
