# WordNetDecoder

[![Status](https://github.com/wacumov/WordNetDecoder/workflows/Test/badge.svg?branch=master)](https://github.com/wacumov/WordNetDecoder/actions?query=workflow%3ATest+branch%3Amaster)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fwacumov%2FWordNetDecoder%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/wacumov/WordNetDecoder)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fwacumov%2FWordNetDecoder%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/wacumov/WordNetDecoder)

A Swift decoder for WordNets. Basically, it's just a set of models that matches [the schema](https://globalwordnet.github.io/schemas/). All the hard work of XML parsing is doing by [this package](https://github.com/wacumov/xml2json).

## Installation

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a tool for
managing the distribution of Swift code. 
Once you have your Swift package set up, adding `WordNetDecoder` as a dependency is as
easy as adding it to the `dependencies` value of your `Package.swift`.
```swift
dependencies: [
    .package(url: "https://github.com/wacumov/WordNetDecoder", from: "0.0.2")
]
```

## Usage

Just read contents of a wordnet file in XML format and pass it to a `WordNetXMLDecoder`. You will get `Codable` models that are convenient to work with.
```swift
let wordnet = try WordNetXMLDecoder().decode(data)
```
