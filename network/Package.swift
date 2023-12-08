// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorNetwork",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CAPNetworkPlugin",
            targets: ["CAPNetworkPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor6-spm-test.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CAPNetworkPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor6-spm-test"),
                .product(name: "Cordova", package: "capacitor6-spm-test")
            ],
            path: "ios/Sources/NetworkPlugin"),
        .testTarget(
            name: "CAPNetworkPluginTests",
            dependencies: ["CAPNetworkPlugin"],
            path: "ios/Tests/NetworkPluginTests")
    ]
)
