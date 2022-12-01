//
//  SectionsFriendsView.swift
//  BeFake
//
//  Created by Premiersoft on 22/11/22.
//

import SwiftUI

struct SectionFriendsView: View {
    let data: FriendsModel
    
    init(_ data: FriendsModel) {
        self.data = data
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(data.section, id: \.id) { contact in
                Section {
                    ForEach(contact.data, id: \.id) { contact in
                        FriendsCell(contact)
                    }
                } header: {
                    Text(contact.title)
                        .font(.system(size: 16, weight: .bold))
                        .padding([.leading, .trailing])
                        .frame(alignment: .leading)
                }
            }
        }
    }
}


//struct SectionFriendsView: View {
//    let firstTitle: String
//    let secondTitle: String
//    let data: [FriendsCellData]
//
//    init(_ data: [FriendsCellData], firstTitle: String, secondTitle: String) {
//        self.firstTitle = firstTitle
//        self.secondTitle = secondTitle
//        self.data = data
//    }
//    var body: some View {
//        VStack(alignment: .leading, spacing: 16) {
//            Section {
//                ForEach(data, id: \.id) { contact in
//                    if let _ = contact.contactName {
//                        FriendsCell(contact)
//                    }
//                }
//            } header: {
//                Text(firstTitle)
//                    .font(.system(size: 18, weight: .bold))
//                    .padding([.leading, .trailing])
//                    .frame(alignment: .leading)
//            }
//
//            Section {
//                ForEach(data, id: \.id) { contact in
//                    if let _ = contact.commumFriends {
//                        FriendsCell(contact)
//                    }
//                }
//            } header: {
//                Text(secondTitle)
//                    .font(.system(size: 18, weight: .bold))
//                    .padding([.leading, .trailing])
//                    .frame(alignment: .leading)
//            }
//        }
//    }
//}
