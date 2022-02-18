//
//  GitHubLicense.swift
//  
//  
//  Created by elmetal on 2022/02/18
//  
//

import Foundation

public struct GitHubLicense: Decodable, License {
    public let key: String
    public let name: String
    public let spdx_id: String
}
