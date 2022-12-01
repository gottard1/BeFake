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
    
    @State private var searchedText = ""
    
    init(viewModel: FriendsViewModel = .init()) {
        self.viewModel = viewModel
    }
    var body: some View {
        ScrollView {
            VStack {
                TextField(" \(Image(systemName: "magnifyingglass")) Procure por mais pessoas!", text: $searchedText)
                    .padding()
                    .frame(width: UIScreen.screenWidht - 20, height: 55, alignment: .center)
                    .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(.gray, lineWidth: 2)
                        )
                    .padding()
                
                SectionFriendsView(viewModel.data)
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
                            .foregroundColor(.lightGray)
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
