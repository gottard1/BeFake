//
//  FriendsViewModel.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import SwiftUI

class FriendsViewModel: ObservableObject {
    
    var data: FriendsModel = FriendsModel(section: [
        FriendsSection(id: 0,
                       title: "MEUS AMIGOS",
                       data: [FriendsCellData(id: 0,
                                              image: Image("Selfie"),
                                              name: "Lucas André Zenke",
                                              username: "Zkanm")]),
        FriendsSection(id: 1,
                       title: "SOLICITAÇÕES ENVIADAS",
                       data: [FriendsCellData(id: 1,
                                              image: Image("Selfie"),
                                              name: "Marcel Felipe Gottardi Anesi",
                                              username: "gottard1",
                                              pending: true)]),
        FriendsSection(id: 2,
                       title: "ADICIONE SEUS CONTATOS",
                       data: [FriendsCellData(id: 2,
                                              image: Image("Selfie"),
                                              name: "Ian",
                                              username: "ianagtnunes",
                                              contactName: "Ianzada")]),
        FriendsSection(id: 3,
                       title: "PESSOAS QUE TALVEZ VOCÊ CONHEÇA",
                       data: [FriendsCellData(id: 3,
                                              image: Image("Selfie"),
                                              name: "Emanuella Eduarda Ferrari",
                                              username: "manueef",
                                              commumFriends: 8)])
        
    ])
    
}
