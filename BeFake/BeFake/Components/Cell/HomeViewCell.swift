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
    let screenWidht = UIScreen.main.bounds.size.width
    
    var person: String
    var image: String
    var hours: String
    
    var body: some View {
        VStack {
            Divider()
            
            HStack(alignment: .center) {
                Image("selfie")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .padding([.leading])
                
                Text(person)
                
                Spacer()
                
                Text(hours)
                
                Button {
                    print("tapped pencil")
                } label: {
                    Image(systemName: "column")
                }
                .padding([.trailing])
            }
            .frame(width: screenWidht)
            
            Divider()
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidht - 10, height: screenWidht * 1.3)
                .cornerRadius(25)
        }
    }
}

struct HomeViewCell_Preview: PreviewProvider {
    static var previews: some View {
        HomeViewCell(person: "Marcel", image: "selfie", hours: "15hrs")
    }
}
