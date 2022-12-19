//
//  NetworkManager.swift
//  BeFake
//
//  Created by Premiersoft on 09/12/22.
//

import SwiftUI
import Combine


protocol NetworkManager {
    
    var decoder: JSONDecoder { get set }
    
}

extension NetworkManager {
    
    func execute<T: Decodable>(route: NetworkRoute) -> AnyPublisher<T, Error> {
        
        let request = route.createURL(for: Endpoints.baseURL)
        
        return URLSession.shared
                .dataTaskPublisher(for: request)
                .tryCompactMap { result in
                    try self.decoder.decode(T.self, from: result.data)
                }
                .receive(on: RunLoop.main)
                .eraseToAnyPublisher()
    }
}
