//
//  GithubLicense.swift
//  
//  
//  Created by elmetal on 2022/02/21
//  
//

import Foundation

public struct GithubLicense: Decodable {
    let key: String
    let name: String
    let description: String
    let body: String
}
