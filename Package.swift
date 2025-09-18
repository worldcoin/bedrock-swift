// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.0.13

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
            url: "https://api.github.com/repos/worldcoin/bedrock-swift/releases/assets/294455330.zip",
            checksum: "2d5173fd8fe6364fd4c3f64f2544d72a4b35f38caf043e1e3bd8958b89005bd9"
        )
    ]
)
