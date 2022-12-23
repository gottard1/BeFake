//
//  FriendsViewModel.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import Combine

class FriendsViewModel: Service, ObservableObject {
    
    typealias NetworkResource = FriendsModel
    
    var route: NetworkRoute = FriendsTarget.list
    var resource: Resource<FriendsModel> = .loading
    var bag: Set<AnyCancellable> = Set<AnyCancellable>()
    var network: Network = FriendsService()
    
}
