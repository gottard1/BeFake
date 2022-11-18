//
//  RoundedImage.swift
//  BeFake
//
//  Created by Premiersoft on 17/11/22.
//

import SwiftUI

struct RoundedImage: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .shadow(radius: 10)
    }
}
