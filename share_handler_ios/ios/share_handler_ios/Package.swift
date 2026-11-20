// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "share_handler_ios",
    platforms: [
        .iOS("15.0"),
        // .macOS("10.15")
    ],
    products: [
        .library(name: "share-handler-ios", targets: ["share_handler_ios", "share_handler_ios_models"]),
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "share_handler_ios_models",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
            ],
        ),
        .target(
            name: "share_handler_ios",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                "share_handler_ios_models"
            ],
            path: "Sources/share_handler_ios",
        ),
    ]
)
