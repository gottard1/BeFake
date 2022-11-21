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
        HomeCellType(id: 2,
                     userData: UserData(profileImage: "selfie",
                                        name: "Kappa",
                                        hours: "4hr atrasado"),
                     picture: "selfie"),
        HomeCellType(id: 3,
                     userData: UserData(profileImage: "selfie",
                                        name: "Faustão",
                                        hours: "1hr atrasado"),
                     picture: "selfie",
                     title: "Passando um tempo com os amigos Passando um tempo com os amigos Passando um tempo com os amigos"),
        HomeCellType(id: 4,
                     userData: UserData(profileImage: "selfie",
                                        name: "Keppo",
                                        hours: "4hr atrasado"),
                     picture: "selfie",
                     title: "Passando um tempo com os amigos"),
        HomeCellType(id: 5,
                     userData: UserData(profileImage: "selfie",
                                        name: "Kappa",
                                        hours: "4hr atrasado"),
                     picture: "selfie"),
        HomeCellType(id: 6,
                     userData: UserData(profileImage: "selfie",
                                        name: "Faustão",
                                        hours: "1hr atrasado"),
                     picture: "selfie",
                     title: "Passando um tempo com os amigos Passando um tempo com os amigos Passando um tempo com os amigos"),
        HomeCellType(id: 7,
                     userData: UserData(profileImage: "selfie",
                                        name: "Keppo",
                                        hours: "4hr atrasado"),
                     picture: "selfie",
                     title: "Passando um tempo com os amigos"),
        HomeCellType(id: 8,
                     userData: UserData(profileImage: "selfie",
                                        name: "Kappa",
                                        hours: "4hr atrasado"),
                     picture: "selfie"),
    ]
    
}
