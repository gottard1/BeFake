//
//  HomeView.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 08/11/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var viewModel: HomeViewModel
    
    @State private var goingToFriends: Bool = false
    @State private var goingToProfile: Bool = false
    
    init(viewModel: HomeViewModel = .init()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigationLink(destination: ProfileView(), isActive: $goingToProfile) {
                                EmptyView()
                    }
                    NavigationLink(destination: FriendsView(), isActive: $goingToFriends) {
                                EmptyView()
                    }
                    
                    ForEach(viewModel.data) { data in
                        HomeViewCell(data)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        self.goingToFriends = true
                    }, label: {
                        Image(systemName: "person.2.fill")
                            .foregroundColor(.gray)
                    }),
                trailing:
                    Button(action: {
                        self.goingToProfile = true
                        print("perfil")
                    }, label: {
                        RoundedImage(image: "selfie")
                            .frame(width: 50, height: 50)
                    })
            )
            .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack {
                                Button(action: {
                                    print("First")
                                }, label: {
                                    Text("BeFake")
                                        .font(.system(size: 20, weight: .bold))
                                        .foregroundColor(Color.accentColor)
                                })
                            }
                        }
                    }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
