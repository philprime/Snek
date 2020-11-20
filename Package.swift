// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Snek",
    products: [
        .library(name: "Snek", targets: ["Snek"]),
    ],
    targets: [
        .target(name: "Snek", dependencies: []),
        .testTarget(name: "SnekTests", dependencies: ["Snek"]),
    ]
)
