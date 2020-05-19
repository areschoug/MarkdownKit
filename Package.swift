// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "MarkdownKit",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(name: "MarkdownKit", targets: ["MarkdownKit"]),
    ],
    targets: [
        .target(name: "MarkdownKit",dependencies: [], path: "MarkdownKit"),
    ]
)
