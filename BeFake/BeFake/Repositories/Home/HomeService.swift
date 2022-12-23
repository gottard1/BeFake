//
//  HomeService.swift
//  BeFake
//
//  Created by Premiersoft on 20/12/22.
//

import Foundation

struct HomeService: Service {
    
    typealias NetworkResource = HomeModel
    
    var route: NetworkRoute = HomeTarget.list
    var resource: Resource<HomeModel> = .loading
    var bag: Set<AnyCancellable> = Set<AnyCancellable>()
    var network: Network = HomeService()
    
}
