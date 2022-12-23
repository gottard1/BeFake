//
//  DisplayDataCell.swift
//  BeFake
//
//  Created by Premiersoft on 14/11/22.
//

import SwiftUI

struct UserInformationCell: View {
    
    let data: UserData
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image("selfie")
                .resizable()
                .frame(width: 30, height: 30)
                .clipShape(Circle())
                .shadow(radius: 10)
                .padding([.leading])
            
            Text(data.name)
            
            Spacer()
            
            Text(data.hours)
            
            Button {
                print("tapped pencil")
            } label: {
                Image(systemName: "pencil") // change image after
            }
            .foregroundColor(.gray)
            .padding([.trailing])
        }
        .frame(width: UIScreen.main.bounds.size.width)
    }
}
