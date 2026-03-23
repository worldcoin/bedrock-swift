// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.2.6

import PackageDescription

let package = Package(
    name: "Bedrock",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Bedrock",
            targets: ["Bedrock"])
    ],
    targets: [
        .target(
            name: "Bedrock",
            dependencies: ["BedrockFFI"],
            path: "Sources/Bedrock"
        ),
        .binaryTarget(
            name: "BedrockFFI",
            url: "https://api.github.com/repos/worldcoin/bedrock-swift/releases/assets/380041323.zip",
            checksum: "d7c14c1b85132a2a346859901b43cd6c4da38cbcde85cc0c89e3351f57c94c13"
        )
    ]
)
