// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Swindler",
    products: [
        .library(
            name: "Swindler",
            targets: ["Swindler"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kinglouie/AXSwift", .branch("master")),
        .package(url: "https://github.com/Quick/Nimble", .upToNextMinor(from: "7.3.4")),
        .package(url: "https://github.com/mxcl/PromiseKit", .upToNextMinor(from: "6.7.1")),
        .package(url: "https://github.com/Quick/Quick", .upToNextMinor(from: "1.2.0"))
    ],
    targets: [
        .target(
            name: "Swindler",
            dependencies: ["AXSwift", "PromiseKit"],
            path: "Sources"
        ),
        .target(
            name: "SwindlerExample",
            dependencies: ["AXSwift", "Swindler", "PromiseKit"],
            path: "SwindlerExample"
        ),
        .testTarget(
            name: "SwindlerTests",
            dependencies: ["Swindler", "PromiseKit", "Quick", "Nimble"],
            path: "SwindlerTests"
        )
    ],
    swiftLanguageVersions: [4]
)
