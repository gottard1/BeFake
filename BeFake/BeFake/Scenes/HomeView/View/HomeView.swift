//
//  HomeView.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 08/11/22.
//

import SwiftUI

struct HomeView: View {
    
    let image: [HomeCellType] = [
        HomeCellType(id: 0, title: "Olá Mundo"),
        HomeCellType(id: 1, title: "Oi Mundo"),
        HomeCellType(id: 2, title: "Hello World"),
        HomeCellType(id: 3, title: "Hi World"),
        HomeCellType(id: 4, title: "Bye")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(image) { data in
                    HomeViewCell(title: data.title)
                }
            }
            .padding([.top, .bottom])
        }
        .navigationTitle("BeFake.")
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
