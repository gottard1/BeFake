//
//  NetworkRoute.swift
//  BeFake
//
//  Created by Premiersoft on 06/12/22.
//

import Foundation

protocol NetworkRoute {
    var path: String { get }
    var method: NetworkMethod { get }
    var body: String? { get }
    var headers: [String: String]? { get }
}

extension NetworkRoute {
    
    var body: String? {
        return nil
    }
    
    var headers: [String: String]? {
        return nil
    }
    
    func createURL(for host: String) -> URLRequest {
        var components = URLComponents(string: host)!
//        urlComponents.queryItems = httpRequest.queryItems
        components.path.append(path)
        
        var urlRequest = URLRequest(url: components.url!)
        urlRequest.timeoutInterval = 30
//        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = try? body?.toData()
        urlRequest.httpMethod = method.rawValue
        
        return urlRequest
    }
    
}
