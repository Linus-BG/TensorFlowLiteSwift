// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorFlowLiteSwift",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteSwift"
            ]
        )
    ],
    targets: [
        .target(
            name: "TensorFlowLiteSwift",
            linkerSettings: [.linkedLibrary("c++")]
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/166724021.zip",
            checksum: "a83c0845f034bf7477c895fb0a85394f492e70422008ed83fcc6a025d507d771"
        ),
    ]
)
