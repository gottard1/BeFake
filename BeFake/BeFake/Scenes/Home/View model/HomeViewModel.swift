//
//  HomeViewModel.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 10/11/22.
//

import Combine

class HomeViewModel: NetworkViewModel, ObservableObject {
    
    typealias NetworkResource = HomeModel
    
    var route: NetworkRoute = HomeTarget.list
    var resource: Resource<HomeModel> = .loading
    var bag: Set<AnyCancellable> = Set<AnyCancellable>()
    var network: Network = HomeService()
    
}
