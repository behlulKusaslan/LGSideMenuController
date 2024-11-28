// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "LGSideMenuController",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "LGSideMenuController",
      targets: ["LGSideMenuController"]
    )
  ],
  targets: [
    .target(
      name: "LGSideMenuController",
      path: "Sources/LGSideMenuController",
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath("Framework"),
        .headerSearchPath("include")
      ]
    ),
    .testTarget(
      name: "LGSideMenuControllerTests",
      dependencies: ["LGSideMenuController"],
      path: "Tests"
    )
  ]
)
