// swift-tools-version:5.10
//
//  Package.swift
//  BTree
//
//  Created by Károly Lőrentey on 2015-12-15.
//  Copyright © 2015-2017 Károly Lőrentey.
//

import PackageDescription

let package = Package(
    name: "BTree",
    products: [
        .library(name: "BTreeModule", targets: ["BTreeModule"])
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "BTreeModule"),
        .target(name: "BTree", dependencies: ["BTreeModule"]),
        .testTarget(name: "BTreeTests", dependencies: ["BTree"]),
        .testTarget(name: "PerformanceTests", dependencies: ["BTree"])
    ])
