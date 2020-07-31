// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "SunMoonToggleStyle",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15)
  ],
  products: [.library(name: "SunMoonToggleStyle", targets: ["SunMoonToggleStyle"])],
  dependencies: [],
  targets: [.target(name: "SunMoonToggleStyle", dependencies: [])]
)
