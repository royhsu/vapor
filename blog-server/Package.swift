import PackageDescription

let package = Package(
    name: "blog-server",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", "1.5.9"),
        .Package(url: "https://github.com/vapor/mongo-provider.git", "1.1.0")
    ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
    ]
)
