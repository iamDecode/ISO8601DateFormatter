// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "ISO8601DateFormatter",
	products: [
		// Products define the executables and libraries produced by a package, and make them visible to other packages.
		.library(
			name: "ISO8601DateFormatter",
			type: .dynamic,
			targets: ["CCLISO8601DateFormatter"]),
	],
	dependencies: [
		// Dependencies declare other packages that this package depends on.
		// .package(url: /* package url */, from: "1.0.0"),
	],
	targets: [
		// Targets are the basic building blocks of a package. A target can define a module or a test suite.
		// Targets can depend on other targets in this package, and on products in packages which this package depends on.
		.target(
			name: "CCLISO8601DateFormatter",
			dependencies: [],
			publicHeadersPath: ".",
			cSettings: [
				.unsafeFlags(["-fno-objc-arc"])
			]
		),
    .testTarget(
      name: "CCLISO8601DateFormatterTests",
      dependencies: ["CCLISO8601DateFormatter"]
    )
	]
)
