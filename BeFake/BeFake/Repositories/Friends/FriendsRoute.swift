//
//  FriendsRoute.swift
//  BeFake
//
//  Created by Premiersoft on 12/12/22.
//

import Foundation

enum FriendsRoute {
    case friends
}

extension FriendsRoute: NetworkRoute {
    
    var path: String {
        switch self {
        case .friends:
            return Endpoints.Friends.friends
        }
    }
    
    var method: NetworkMethod {
        switch self {
        case .friends:
            return .get
        }
    }
    
}
