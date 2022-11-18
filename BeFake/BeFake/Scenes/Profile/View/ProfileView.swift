//
//  ProfileView.swift
//  BeFake
//
//  Created by Premiersoft on 15/11/22.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject private var viewModel: ProfileViewModel
    
    init(viewModel: ProfileViewModel = .init()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            RoundedImage(image: "selfie")
                .frame(width: 200, height: 150)
            
            Text(viewModel.data.name)
                .font(.title.bold())
            
            Text(viewModel.data.userName)
                .foregroundColor(.black.opacity(0.6))
                .font(.subheadline)
                .padding(.bottom)
            
            MemoriesView(memories: viewModel.data.yourMemories,
                         visibleOnlyToYou: viewModel.data.visibleOnlyToYou)
            
            Rectangle() // provisório
                .foregroundColor(.blue)
        }
        .navigationTitle("Perfil")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading:
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.gray)
                }),
            trailing:
                Button(action: {
                    print("Opções")
                }, label: {
                    Image(systemName: "building.columns")
                        .foregroundColor(.gray)
                })
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
