//
//  FriendsView.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import SwiftUI

struct FriendsCellData: Identifiable {
    var id: Int
    
    var image: Image
    var name: String
    var username: String
    
    var contactName: String?
    var commumFriends: Int?
}

struct FriendsView: View {
    @Environment(\.dismiss) private var dismiss
    
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
            commumFriends: 15
        ),
        FriendsCellData(
            id: 4,
            image: Image("Selfie"),
            name: "Mariana",
            username: "maaregs",
            contactName: "Mariana"
        )
    ]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                Section("ADICIONE DOS SEUS CONTATOS") {
                    ForEach(data, id: \.id) { contact in
                        if let _ = contact.contactName {
                            FriendsCell(contact)
                        }
                    }
                }
                .padding([.leading, .trailing])
                
                Section("PESSOAS QUE TALVEZ VOCÊ CONHEÇA") {
                    ForEach(data, id: \.id) { contact in
                        if let _ = contact.commumFriends {
                            FriendsCell(contact)
                        }
                    }
                }
                .padding([.leading, .trailing])
                
            }
            .navigationTitle("BeFake")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
