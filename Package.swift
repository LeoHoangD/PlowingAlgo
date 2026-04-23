// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlowingAlgo",
    targets: [
        .target(name: "CppLib"),
        .executableTarget(
            name: "PlowingAlgo",
            dependencies: ["CppLib"],
            swiftSettings: [
                .interoperabilityMode(.Cxx)
            ]
        ),
        .executableTarget(
            name: "PlowingAlgoCpp",
            dependencies: ["CppLib"],
        ),
    ],
    swiftLanguageModes: [.v6],
    cxxLanguageStandard: .cxx17
)
