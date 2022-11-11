//
//  HomeViewCell.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 10/11/22.
//

import SwiftUI

struct HomeCellType: Identifiable {
    var id: Int
    var person: String
    var image: String
    var hours: String
}

struct HomeViewCell: View {
    var person: String
    var image: String
    var hours: String
    
    var body: some View {
        VStack {
            HStack {
                Image("selfie")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                Text(person)
                
                Spacer()
                
                Text(hours)
                
                Button {
                    print("tapped pencil")
                } label: {
                    Label("Edit", systemImage: "pencil")
                }
            }
            
            Image(image)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding([.leading, .trailing])
        }
    }
}

struct HomeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewCell(person: "Texto", image: "", hours: "")
    }
}
