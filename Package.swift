// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.0.27

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
            url: "https://api.github.com/repos/worldcoin/bedrock-swift/releases/assets/320403126.zip",
            checksum: "7aa6d05c216f1797a3419a359653133dae01cee078fec50dbdcbca8caa5c054a"
        )
    ]
)
