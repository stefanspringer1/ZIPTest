// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZIPTest",
    platforms: [
        .macOS(.v11),
    ],
    dependencies: [
        //.package(url: "https://github.com/stefanspringer1/ZIPFoundationModern", from: "0.0.1")
        .package(url: "https://github.com/stefanspringer1/ZIPFoundationModern", revision: "63f5077ee61622608a9c7f2e5300ed23a22aa4e0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "ZIPTest",
            dependencies: [
                .product(name: "ZIPFoundation", package: "ZIPFoundationModern")
            ],
            path: "Sources"
        ),
    ]
)
