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
       .library(name: "AWSLambda",              targets: ["AWSLambda"]),
        .library(name: "AWSS3",                 targets: ["AWSS3"]),
        .library(name: "AWSIAM",                targets: ["AWSIAM"]),
        .library(name: "AWSSNS",                targets: ["AWSSNS"]),
        .library(name: "AWSRDS",                targets: ["AWSRDS"]),
        .library(name: "AWSSTS",                targets: ["AWSSTS"]),
        .library(name: "AWSOrganizations",      targets: ["AWSOrganizations"]),
        .library(name: "AWSRDSDataService",     targets: ["AWSRDSDataService"]),
   ],
    dependencies: [
        .package(name:"aws-sdk-swift-core", url: "https://github.com/brightenai/aws-sdk-swift-core.git", .branch("master")),
        .package(url: "https://github.com/brightenai/swift-crypto.git", .branch("master"))
    ],
    targets: [
       .target(name: "AWSLambda", dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")], path: "./Sources/AWSSDKSwift/Services/Lambda"),
       .target(name: "AWSS3", dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core"), "CAWSZlib"],
            path: "./Sources/AWSSDKSwift/",sources: ["Services/S3", "Extensions/S3"],linkerSettings: [.unsafeFlags([ "-Xlinker","-S"])]),
        
        .target(name: "AWSOrganizations",dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")],path: "./Sources/AWSSDKSwift/",sources: ["Services/Organizations"]),
        .target(name: "AWSSNS",dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")],path: "./Sources/AWSSDKSwift/",sources: ["Services/SNS"]),
        .target(name: "AWSS3Control",dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")],path: "./Sources/AWSSDKSwift/",sources: ["Services/S3Control", "Extensions/S3Control"]),
        
        .target(name: "CAWSZlib", linkerSettings: [.linkedLibrary("z")]),
        
        .target(name: "AWSIAM", dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")], path: "./Sources/AWSSDKSwift/Services/IAM"),
        .target(name: "AWSSTS", dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")], path: "./Sources/AWSSDKSwift/Services/STS"),
        .target(name: "AWSRDS", dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")], path: "./Sources/AWSSDKSwift/Services/RDS"),
        .target(name: "AWSRDSDataService", dependencies: [.product(name: "AWSSDKSwiftCore", package: "aws-sdk-swift-core")], path: "./Sources/AWSSDKSwift/Services/RDSDataService"),

    ]
)
