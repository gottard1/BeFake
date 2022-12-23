//
//  NetworkViewModel.swift
//  BeFake
//
//  Created by Premiersoft on 13/12/22.
//

import Foundation
import Combine

protocol NetworkViewModel: ObservableObject {
    
    associatedtype NetworkResource: Decodable
    
    var objectWillChange: ObservableObjectPublisher { get }
    var resource: Resource<NetworkResource> { get set }
    var network: Network { get set }
    var route: NetworkRoute { get }
    var bag: Set<AnyCancellable> { get set }
    
    func onAppear()
    
}

extension NetworkViewModel {
    
    func fetch(route: NetworkRoute) {
        (network.execute(route: route) as AnyPublisher<NetworkResource, Error>)
            .receive(on: RunLoop.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    self.resource = .error(error)
                default:
                    break
                }
            } receiveValue: { decodable in
                self.resource = .success(decodable)
                self.objectWillChange.send()
            }
            .store(in: &bag)

    }
    
    func onAppear() {
        fetch(route: route)
    }
    
}
