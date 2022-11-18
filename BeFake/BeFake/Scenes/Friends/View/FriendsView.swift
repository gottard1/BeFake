//
//  FriendsView.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import SwiftUI

struct FriendsView: View {
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject private var viewModel: FriendsViewModel
    
    init(viewModel: FriendsViewModel = .init()) {
        self.viewModel = viewModel
    }
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                Section {
                    ForEach(viewModel.data, id: \.id) { contact in
                        if let _ = contact.contactName {
                            FriendsCell(contact)
                        }
                    }
                } header: {
                    Text("ADICIONE DOS SEUS CONTATOS")
                        .font(.system(size: 18, weight: .bold))
                        .padding([.leading, .trailing])
                }
                
                
                Section {
                    ForEach(viewModel.data, id: \.id) { contact in
                        if let _ = contact.commumFriends {
                            FriendsCell(contact)
                        }
                    }
                } header: {
                    Text("PESSOAS QUE TALVEZ VOCÊ CONHEÇA")
                        .font(.system(size: 18, weight: .bold))
                        .padding([.leading, .trailing])
                }
                
            }
            .navigationTitle("BeFake")
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.gray)
                    })
            )
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
