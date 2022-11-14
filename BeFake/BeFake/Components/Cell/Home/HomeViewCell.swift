//
//  HomeViewCell.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 10/11/22.
//

import SwiftUI

struct HomeCellType: Identifiable {
    var id: Int
    var userData: UserData
    var picture: String
    var title: String?
}

struct HomeViewCell: View {
    let screenWidht = UIScreen.main.bounds.size.width
    
    let data: HomeCellType
    
    var body: some View {
        VStack(spacing: 8) {
            Spacer(minLength: 16)
            
            UserInformationCell(data: data.userData)
                .padding(8)
            
            Image(data.picture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidht - 10, height: screenWidht * 1.3)
                .cornerRadius(25)
                .shadow(radius: 8)
            
            VStack(alignment: .leading, spacing: 10) {
                if let title = data.title {
                    Text(title)
                        .padding([.leading, .trailing])
                }
                
                Button {
                    print("tapped comentário")
                } label: {
                    Text("Adicione um comentário...")
                        .padding([.leading, .trailing])
                }
            }
            .frame(width: screenWidht, alignment: .leading)
            
            
        }
    }
}
