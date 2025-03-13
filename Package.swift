// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PhenixSdkDrmCastLabs",
    platforms: [.iOS(.v12), .tvOS(.v12),],
    products: [
        .library(name: "PhenixSdkDrmCastLabs",
                 targets: ["PhenixSdkDrmCastLabs", "PhenixSdkDrmCastLabsWithDeps"]),
    ],
    dependencies: [
        .package(url: "https://github.com/phenixrts/swift-phenixrtssdk", from: "2025.1.0"),
        .package(url: "https://github.com/PhenixRTSVendors/swift-castlabs-isobmff-player", from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
                name: "PhenixSdkDrmCastLabsBinary",
                url: "https://dl.phenixrts.com/sdk/apple/2025.0.0-5db9bb8-20250117T110544222/PhenixSdkDrmCastLabs.xcframework.zip",
                checksum: "240b6ee5d672fdcc4c5976cdb840d3bdb78a11a8ce3038d71a5b0adee8a4f50f"),
        .target(
                name: "PhenixSdkDrmCastLabsWithDeps",
                dependencies: [.product(name: "PhenixSdk", package: "swift-phenixrtssdk"), .product(name: "CastlabsIsobmffPlayer", package: "swift-castlabs-isobmff-player")]),
    ]
)
