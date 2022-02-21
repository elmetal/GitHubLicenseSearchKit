//
//  GitHubRepository.swift
//  
//  
//  Created by elmetal on 2022/02/18
//  
//

import Foundation

public struct GitHubRepositories: Decodable {
    public let items: [GitHubRepository]

    public struct GitHubRepository: Decodable {
        public let owner: RepositoryOwner
        public let name: String
        public let license: License?
    }

    public struct RepositoryOwner: Decodable {
        public let login: String
    }

    public struct License: Decodable {
        public let key: String
        public let name: String
        public let spdx_id: String
    }
}
