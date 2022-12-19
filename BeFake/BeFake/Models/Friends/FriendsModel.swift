//
//  FriendsModel.swift
//  BeFake
//
//  Created by Premiersoft on 29/11/22.
//

import Foundation

struct FriendsModel: Decodable {
    var section: [FriendsSection]
    
    enum CodingKeys: String, CodingKey {
        case section = "section"
    }
}

struct FriendsSection: Decodable, Identifiable {
    var id = UUID()
    
    var title: String
    var data: [FriendsCellData]
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case data = "data"
    }
    
}

struct FriendsCellData: Decodable, Identifiable {
    var id = UUID()
    
    var image: String
    var name: String
    var username: String
    
    var contactName: String?
    var commumFriends: Int?
    var pending: Bool?
    
    enum CodingKeys: String, CodingKey {
        case image = "image"
        case name = "name"
        case username = "username"
        
        case contactName = "contactName"
        case commumFriends = "commumFriends"
        case pending = "pending"
    }
}
