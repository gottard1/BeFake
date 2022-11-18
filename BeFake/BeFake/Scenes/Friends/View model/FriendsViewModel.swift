//
//  FriendsViewModel.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import SwiftUI

class FriendsViewModel: ObservableObject {
    
    var data: [FriendsCellData] = [
        FriendsCellData(
            id: 0,
            image: Image("Selfie"),
            name: "Lucas André Zenke",
            username: "Zkanm",
            contactName: "Zenek"
        ),
        FriendsCellData(
            id: 1,
            image: Image("Selfie"),
            name: "Emanuella Eduarda Ferrari",
            username: "manuef",
            commumFriends: 9
        ),
        FriendsCellData(
            id: 2,
            image: Image("Selfie"),
            name: "Daniel Mendes de Almeida",
            username: "Daniboy",
            commumFriends: 2
        ),
        FriendsCellData(
            id: 3,
            image: Image("Selfie"),
            name: "Ian Augusto Nunes",
            username: "ianagtnunes",
            commumFriends: 154
        ),
        FriendsCellData(
            id: 4,
            image: Image("Selfie"),
            name: "Mariana",
            username: "maaregs",
            contactName: "Mariana"
        ),
        FriendsCellData(
            id: 5,
            image: Image("Selfie"),
            name: "André Zenke",
            username: "Zenek",
            contactName: "Zkanm"
        ),
        FriendsCellData(
            id: 6,
            image: Image("Selfie"),
            name: "Emanuella Eduarda Ferrari",
            username: "manuef",
            commumFriends: 9
        ),
        FriendsCellData(
            id: 7,
            image: Image("Selfie"),
            name: "Daniel Mendes de Almeida",
            username: "Daniboy",
            commumFriends: 2
        ),
        FriendsCellData(
            id: 8,
            image: Image("Selfie"),
            name: "Ian Augusto Nunes",
            username: "ianagtnunes",
            commumFriends: 154
        ),
        FriendsCellData(
            id: 9,
            image: Image("Selfie"),
            name: "Mariana",
            username: "maaregs",
            contactName: "Mariana"
        ),
        FriendsCellData(
            id: 10,
            image: Image("Selfie"),
            name: "Lucas André Zenke",
            username: "Zkanm",
            contactName: "Zenek"
        ),
        FriendsCellData(
            id: 11,
            image: Image("Selfie"),
            name: "Emanuella Eduarda Ferrari",
            username: "manuef",
            commumFriends: 9
        ),
        FriendsCellData(
            id: 12,
            image: Image("Selfie"),
            name: "Daniel Mendes de Almeida",
            username: "Daniboy",
            commumFriends: 2
        ),
        FriendsCellData(
            id: 13,
            image: Image("Selfie"),
            name: "Ian Augusto Nunes",
            username: "ianagtnunes",
            commumFriends: 154
        ),
        FriendsCellData(
            id: 14,
            image: Image("Selfie"),
            name: "Mariana",
            username: "maaregs",
            contactName: "Mariana"
        )
    ]
    
}
