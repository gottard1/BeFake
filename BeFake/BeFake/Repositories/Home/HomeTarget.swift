//
//  HomeTarget.swift
//  BeFake
//
//  Created by Premiersoft on 20/12/22.
//

import Foundation

enum HomeTarget {
    case list
}

extension HomeTarget: NetworkRoute {
    
    var path: String {
        switch self {
        case .list:
            return Endpoints.Home.list
        }
    }
    
    var method: NetworkMethod {
        switch self {
        case .list:
            return .get
        }
    }
}
