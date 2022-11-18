//
//  FriendsCell.swift
//  BeFake
//
//  Created by Premiersoft on 18/11/22.
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

struct FriendsCell: View {
    var data: FriendsCellData
    
    init(_ data: FriendsCellData) {
        self.data = data
    }
    
    var body: some View {
        HStack(alignment: .center) {
            RoundedImage(image: "selfie")
                .frame(width: 100)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(data.name)
                    .font(.system(size: 15).bold())
                    .lineLimit(1)
                
                Text(data.username)
                    .font(.system(size: 14).italic())
                
                if let contact = data.contactName {
                    HStack(spacing: 4) {
                        Image(systemName: "person.circle")
                            .fixedSize()
                        
                        Text(contact)
                            .font(.system(size: 13))
                    }
                    .foregroundColor(.gray)
                } else if let commumFriends = data.commumFriends {
                    Text("\(commumFriends) Amigos em comum")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
            
            Button {
                print("Adicionando")
            } label: {
                Text("ADICIONAR")
                    .frame(width: 90, height: 25)
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.white)
                    .background(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
            .foregroundColor(.gray)
            
            Button {
                print("Fechando")
            } label: {
                Image(systemName: "xmark")
            }
            .padding(.trailing)
            .foregroundColor(.gray)
            
        }
    }
}

