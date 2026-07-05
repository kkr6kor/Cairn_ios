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
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution.git", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "Cairn",
            dependencies: [
                "Alamofire",
                // ADD MAPLIBRE TO THE TARGET
                .product(name: "MapLibre", package: "maplibre-gl-native-distribution")
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
