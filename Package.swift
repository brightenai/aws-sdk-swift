// swift-tools-version:5.2
//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
    name: "aws-sdk-swift",
    platforms: [.macOS(.v10_15),.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
       .library(name: "AWSLambda", targets: ["AWSLambda"]),
        .library(name: "AWSS3", targets: ["AWSS3"]),
        .library(name: "AWSSNS", targets: ["AWSSNS"]),
   ],
    dependencies: [
        .package(name:"aws-sdk-swift-core", url: "https://github.com/brightenai/aws-sdk-swift-core.git", .branch("master")),
        .package(url: "https://github.com/brightenai/swift-crypto.git", .branch("master"))
    ],
    targets: [
       .target(name: "AWSLambda", dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")], path: "./Sources/AWSSDKSwift/Services/Lambda"
//                linkerSettings: [
//                                .unsafeFlags([ "-Xlinker","-soname=libAWSLambda.so"],.when(platforms: [.android])),
//                                 ]
       ),
        
       .target(name: "AWSS3", dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core"), "CAWSZlib"],
            path: "./Sources/AWSSDKSwift/",
            sources: ["Services/S3", "Extensions/S3"]
//            linkerSettings: [
//                            .unsafeFlags([ "-Xlinker","-soname=libAWSS3.so"],.when(platforms: [.android])),
//                             ]
       ),
        
        .target(name: "AWSSNS",
                dependencies: ["AWSSDKSwiftCore"],
                path: "./Sources/AWSSDKSwift/",
                sources: ["Services/SNS"]),


       .target(name: "AWSS3Control",
               dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")],
               path: "./Sources/AWSSDKSwift/",
               sources: ["Services/S3Control", "Extensions/S3Control"]),
        
        .target(name: "CAWSZlib", linkerSettings: [.linkedLibrary("z")]),
    ]
)
