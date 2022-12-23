//
//  HomeModel.swift
//  BeFake
//
//  Created by Premiersoft on 19/12/22.
//

import Foundation

struct HomeModel: Decodable {
    var post: [HomePost]
    
    enum CodingKeys: String, CodingKey {
        case post = "post"
    }
}

struct HomePost: Decodable, Identifiable {
    var id: UUID = .init()

    var userData: UserData
    var frontalPhoto: String
    var backPhoto: String
    var title: String?
    
    enum CodingKeys: String, CodingKey {
        case userData = "user"
        case frontalPhoto = "frontalPhoto"
        case backPhoto = "backPhoto"
        case title = "title"
    }
}

struct UserData: Decodable {
    var profileImage: String
    var name: String
    var hours: String
    
    enum CodingKeys: String, CodingKey {
        case profileImage = "profileImage"
        case name = "name"
        case hours = "hours"
    }
}
