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
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.8.1"),
        // USE THE CORRECT, MODERN MAPLIBRE DISTRIBUTION
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution.git", from: "6.2.7")
    ],
    targets: [
        .target(
            name: "Cairn",
            dependencies: [
                "Alamofire",
                // Make sure the product name matches the new package
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
