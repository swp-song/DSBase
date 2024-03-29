// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DSBase",
    
    platforms: [.iOS(.v13)], products: [.library(name: "DSBase", targets: ["DSBase"]), ],

    targets: [
        .target( name: "DSBase", path: "Sources"),
        .testTarget(name: "DSBaseTests", dependencies: ["DSBase"], path: "Tests"),
    ],
    swiftLanguageVersions: [.v5]
)
