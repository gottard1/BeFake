//
//  ProfileView.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject private var viewModel: ProfileViewModel
    
    init(viewModel: ProfileViewModel = .init()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Image("selfie")
                .resizable(resizingMode: .tile)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            Text(viewModel.data.name)
                .font(.title.bold())
            
            Text(viewModel.data.userName)
                .foregroundColor(.black.opacity(0.6))
                .font(.subheadline)
                .padding(.bottom)
            
            HStack {
                Text(viewModel.data.yourMemories)
                    .font(.system(size: 25, weight: .bold))
                
                Spacer(minLength: 10)
                
                HStack {
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 8, height: 11)
                        .foregroundColor(.gray)
                    
                    Text(viewModel.data.visibleOnlyToYou)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
            }
            .padding([.leading, .trailing])
            
            Rectangle() // provisório
                .foregroundColor(.blue)
        }
        .navigationTitle("Perfil")
        .navigationBarItems(
            trailing:
                Button(action: {
                    print("Opções")
                }, label: {
                    Image(systemName: "building.columns")
                })
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
