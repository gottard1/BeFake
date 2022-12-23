//
//  FriendsView.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import SwiftUI

struct FriendsView: View {
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var viewModel = FriendsViewModel()
    
    @State private var searchedText = ""
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            viewModel.resource.isLoading() {
                Group  {
                    Spacer()
                    Text("LOADING")
                    Spacer()
                }
            }
            
            viewModel.resource.hasError() { error in
                Text(error.localizedDescription)
            }
            
            viewModel.resource.hasResource { data in
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
                        
                        SectionFriendsView(data)
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
        }.onAppear(perform: viewModel.onAppear)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
