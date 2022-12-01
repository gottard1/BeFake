//
//  FriendsModel.swift
//  BeFake
//
//  Created by Premiersoft on 29/11/22.
//

import Foundation
import SwiftUI

struct FriendsModel {
    var section: [FriendsSection]
}

struct FriendsSection: Identifiable {
    var id: Int
    var title: String
    var data: [FriendsCellData]
    
}

struct FriendsCellData: Identifiable {
    var id: Int
    
    var image: Image
    var name: String
    var username: String
    
    var contactName: String?
    var commumFriends: Int?
    var pending: Bool?
}
