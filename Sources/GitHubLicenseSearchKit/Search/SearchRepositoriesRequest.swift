//
//  SearchRepositoriesRequest.swift
//  
//  
//  Created by elmetal on 2022/02/18
//  
//

import Foundation

struct SearchRepositoriesRequest {
    let baseURL: String = "https://api.github.com/"
    let headerFields: [String : String] = ["Accept": "application/vnd.github.v3+json"]

    let query: String
    let path = "search/repositories"

    var urlRequest: URLRequest {
        var urLComponents = URLComponents(string: baseURL + path)!
        urLComponents.queryItems = [URLQueryItem(name: "q", value: query)]
        var request = URLRequest(url: urLComponents.url!)
        request.allHTTPHeaderFields = headerFields
        return request
    }
}
