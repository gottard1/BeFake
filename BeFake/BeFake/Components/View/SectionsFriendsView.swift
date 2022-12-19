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
