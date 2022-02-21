//
//  LicensesRequest.swift
//  
//  
//  Created by elmetal on 2022/02/21
//  
//

import Foundation

struct LicensesLicenseRequest {
    let baseURL: String = "https://api.github.com/"
    let headerFields: [String : String] = ["Accept": "application/vnd.github.v3+json"]

    let key: String
    var path: String { "licenses/\(key)" }

    var urlRequest: URLRequest {
        var request = URLRequest(url: URL(string: baseURL + path)!)
        request.allHTTPHeaderFields = headerFields
        return request
    }
}
