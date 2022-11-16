//
//  ProfileViewModel.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import Foundation

struct ProfileData {
    var picture: String
    var name: String
    var userName: String
    
    var yourMemories: String { return "Suas Memórias" }
    
    var visibleOnlyToYou: String { return "Visível apenas para você." }
}

class ProfileViewModel: ObservableObject {
    
    let data: ProfileData = .init(picture: "selfie",
                                  name: "Marcel Felipe",
                                  userName: "gottard1")
    
}

