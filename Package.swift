// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.0.8

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
            url: "https://api.github.com/repos/worldcoin/bedrock-swift/releases/assets/289672935.zip",
            checksum: "4de589b83e029a07979f6c3da8e9985d1fb12b8349821d66853d79535fea2f02"
        )
    ]
)
