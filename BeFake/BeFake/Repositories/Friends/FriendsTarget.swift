//
//  FriendsTarget.swift
//  BeFake
//
//  Created by Premiersoft on 12/12/22.
//

import Foundation

enum FriendsTarget {
    case list
}

extension FriendsTarget: NetworkRoute {
    
    var path: String {
        switch self {
        case .list:
            return Endpoints.Friends.list
        }
    }
    
    var method: NetworkMethod {
        switch self {
        case .list:
            return .get
        }
    }
    
}
