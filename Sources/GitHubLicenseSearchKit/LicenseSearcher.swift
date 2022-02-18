//
//  LicenseSearcher.swift
//  
//  
//  Created by elmetal on 2022/02/18
//  
//

import Foundation

public struct LicenseSearcher {
    public init() {}

    public func search(repoName: String) async throws -> GitHubRepositories {
        async let (data, _) = URLSession(configuration: .ephemeral).data(for: SearchRequest(query: repoName).urlRequest)
        return try JSONDecoder().decode(GitHubRepositories.self, from: await data)
    }
}
