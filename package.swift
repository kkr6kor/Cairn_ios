// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Cairn",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // An app is built from a library product
        .library(name: "Cairn", targets: ["Cairn"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.8.1")
    ],
    targets: [
        // This should be a regular target, not an executable
        .target(
            name: "Cairn",
            dependencies: [
                "Alamofire"
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
