//
//  LicenseSearcher.swift
//  
//  
//  Created by elmetal on 2022/02/18
//  
//

import Foundation

public struct LicenseSearcher {
    private let jsonDecoder = JSONDecoder()

    public init() {}

    public func search(repoName: String) async throws -> GitHubRepositories {
        async let (data, _) = URLSession(configuration: .ephemeral).data(for: SearchRepositoriesRequest(query: repoName).urlRequest)
        return try jsonDecoder.decode(GitHubRepositories.self, from: await data)
    }

    public func license(key: String) async throws -> GithubLicense {
        async let (data, _) = URLSession(configuration: .ephemeral).data(for: LicensesLicenseRequest(key: key).urlRequest)
        return try jsonDecoder.decode(GithubLicense.self, from: await data)
    }
}
