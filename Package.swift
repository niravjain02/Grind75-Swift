// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Grind75-Swift",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "Grind75Swift",
            targets: ["Grind75Swift"]
        )
    ],
    targets: [
        .target(
            name: "Grind75Swift"
        ),
        .testTarget(
            name: "Grind75SwiftTests",
            dependencies: ["Grind75Swift"]
        )
    ]
)
