//
//  MemoriesView.swift
//  BeFake
//
//  Created by Premiersoft on 18/11/22.
//

import SwiftUI

struct MemoriesView: View {
    var memories: String
    var visibleOnlyToYou: String
    
    var body: some View {
        HStack {
            Text(memories)
                .font(.system(size: 25, weight: .bold))
            
            Spacer(minLength: 10)
            
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: 8, height: 11)
                    .foregroundColor(.gray)
                
                Text(visibleOnlyToYou)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
        }
        .padding([.leading, .trailing])
    }
}
