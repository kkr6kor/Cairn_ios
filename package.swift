// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Cairn",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(name: "Cairn", targets: ["Cairn"])
    ],
    dependencies: [
        // Existing dependency
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.8.1"),
        // ADD THIS NEW DEPENDENCY
        .package(url: "git@github.com:maplibre/maplibre-native-ios.git", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "Cairn",
            dependencies: [
                "Alamofire",
                // ADD MAPLIBRE TO THE TARGET
                .product(name: "MapLibre", package: "maplibre-native-ios")
            ],
            path: "Cairn"
        ),
        .testTarget(
            name: "CairnTests",
            dependencies: ["Cairn"],
            path: "CairnTests"
        )
    ]
)
