//
//  HomeViewCell.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 10/11/22.
//

import SwiftUI

struct HomeCellType: Identifiable {
    var id: Int
    var title: String
    var image: String?
}

struct HomeViewCell: View {
    var title: String
    var image: String?
    
    var body: some View {
        VStack {
            Text(title)
            
            Image(image ?? "")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding([.leading, .trailing])
        }
    }
}

struct HomeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewCell(title: "Hi")
    }
}
