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
                    NavigationLink(destination: ProfileView(),
                                   isActive: $goingToProfile) {
                                EmptyView()
                            }
                    ForEach(viewModel.data) { data in
                        HomeViewCell(data: data)
                    }
                }
            }
            .navigationTitle("BeFake")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    RoundedButton(action: {
                        self.goingToFriends = true
                    }, image: "friends"),
                trailing:
                    RoundedButton(action: {
                        self.goingToProfile = true
                        print("perfil")
                    }, image: "selfie"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
