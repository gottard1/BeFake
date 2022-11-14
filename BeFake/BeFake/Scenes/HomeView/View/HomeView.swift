//
//  HomeView.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 08/11/22.
//

import SwiftUI

struct HomeView: View {
    
    let data: [HomeCellType] = [
        HomeCellType(id: 0,
                     userData: UserData(profileImage: "selfie",
                                        name: "Faustão",
                                        hours: "1hr atrasado"),
                     picture: "selfie",
                     title: "Passando um tempo com os amigos Passando um tempo com os amigos Passando um tempo com os amigos"),
        HomeCellType(id: 1,
                     userData: UserData(profileImage: "selfie",
                                        name: "Keppo",
                                        hours: "4hr atrasado"),
                     picture: "selfie",
                     title: "Passando um tempo com os amigos"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(data) { data in
                        HomeViewCell(data: data)
                    }
                }
            }
            .navigationTitle("BeFake")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    RoundedButton(action: {
                        print("friends")
                    }, image: "friends"),
                trailing:
                    RoundedButton(action: {
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
