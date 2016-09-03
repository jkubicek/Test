import PackageDescription

let package = Package(
    name: "Test",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 28)
    ]
)
