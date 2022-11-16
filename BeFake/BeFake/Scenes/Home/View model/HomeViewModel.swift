//
//  HomeViewModel.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 10/11/22.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
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
    
}
