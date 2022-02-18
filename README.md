# GitHubLicenseSearchKit
Search the license for a given GitHub repository.

## Usage
```swift
let repos = try await LicenseSearcher().search(repoName: "GitHubLicenseSearchKit")
print(repos.items.map { $0.license!.name }.first!) // MIT License
```

## Install
```swift
// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "YourProject",
  dependencies: [
    .package(url: "https://github.com/elmetal/GitHubLicenseSearchKit.git", .from: "0.0.1")
  ],
  targets: [
    .target(name: "YourProject", dependencies: ["GitHubLicenseSearchKit"])
  ]
)
```

## Note
GitHubLicenseSearchKit uses the API in [this document](https://docs.github.com/en/rest/reference/search).
