//
//  RoundedButton.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 12/11/22.
//

import SwiftUI

struct RoundedButton: View {
    var action: (() -> Void)
    var image: String
    
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(image)
                .resizable()
                .frame(width: 35, height: 35)
                .clipShape(Circle())
        }
    }
}
