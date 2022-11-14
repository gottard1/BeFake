//
//  HomeView.swift
//  BeFake
//
//  Created by Marcel Felipe Gottardi Anesi on 08/11/22.
//

import SwiftUI

struct HomeView: View {
    
    let data: [HomeCellType] = [
        HomeCellType(id: 0, person: "Jefrey", image: "selfie", hours: "14hrs atrasado"),
        HomeCellType(id: 1, person: "Melody", image: "selfie", hours: "12hrs atrasado"),
        HomeCellType(id: 2, person: "Lucas", image: "selfie", hours: "2 hrs atrasado"),
        HomeCellType(id: 3, person: "Fernanda", image: "selfie", hours: "15:32:55"),
        HomeCellType(id: 4, person: "Bryan", image: "selfie", hours: "30 min atrasado")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(data) { data in
                        HomeViewCell(person: data.person, image: data.image, hours: data.hours)
                    }
                }
            }
            .navigationTitle("BeFake")
            .navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(
                leading:
                    RoundedButton(action: {
                        print("perfil")
                    }, image: "selfie"),
                trailing:
                    RoundedButton(action: {
                        print("amigos")
                    }, image: "selfie"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
