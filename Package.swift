// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.2.0

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
            url: "https://api.github.com/repos/worldcoin/bedrock-swift/releases/assets/362434492.zip",
            checksum: "a508a8a8e046998fd553bb01c29d38d9db2d21fd335079fbf5fdba63c1a8b964"
        )
    ]
)
