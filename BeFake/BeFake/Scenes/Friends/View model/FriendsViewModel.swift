//
//  FriendsViewModel.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import Combine

class FriendsViewModel: NetworkViewModel, ObservableObject {
    
    typealias NetworkResource = FriendsModel
    
    var route: NetworkRoute = FriendsRoute.friends
    var resource: Resource<FriendsModel> = .loading
    var bag: Set<AnyCancellable> = Set<AnyCancellable>()
    var network: NetworkManager
    
    init(with network: NetworkManager = FriendsService()) {
        self.network = network
    }
    
    
}
