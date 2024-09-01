// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGLEW",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GLEW",
            targets: ["GLEW"]),
        .library(
            name: "CGLEW", 
            targets: ["CGLEW"])
    ],
    targets: [
        .target(name: "GLEW",
            dependencies: ["CGLEW"]),
        .systemLibrary(
            name: "CGLEW",
            pkgConfig: "glew",
            providers: [
                .apt(["libglew-dev"]),
            ]
        ),
    ]
)
