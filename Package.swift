// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Swindler",
    dependencies: [
        .package(url: "https://github.com/kinglouie/AXSwift", .branch("master")),
        .package(url: "https://github.com/mxcl/PromiseKit", from: "6.8.0"),
        .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/Quick/Nimble", .upToNextMajor(from: "7.3.1"))
    ],
    targets: [
        .target(
            name: "Swindler",
            dependencies: ["AXSwift", "PromiseKit"]
            path: "Sources"
        )
    ]
)
