//
//  FriendsService.swift
//  BeFake
//
//  Created by Premiersoft on 13/12/22.
//

import Foundation
import Combine

final class FriendsService: Network, Service {
    
    typealias NetworkResource = FriendsModel
    
    var route: NetworkRoute = FriendsTarget.list
    var resource: Resource<FriendsModel> = .loading
    var bag: Set<AnyCancellable> = Set<AnyCancellable>()
    var network: Network = FriendsService()
    
}
