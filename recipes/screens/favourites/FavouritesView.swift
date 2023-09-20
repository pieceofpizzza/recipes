//
//  FavouritesView.swift
//  recipes
//
//  Created by Дарина Лисанова on 19.09.2023.
//

import SwiftUI

struct FavouritesView: View {
    typealias Design = Favourites.Design
    
    //    @Environment(\.colorScheme) var colorScheme
    //    @Namespace var namespace
    
    let viewModel: FavouritesViewModel
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text(Design.title)
                    .font(Design.titleFont)
                    .foregroundColor(Design.titleForeground)
                    .padding(.vertical, 5)
                    .padding(.top, 50)
                Spacer()
                
            }
            .padding()
            .background(Design.titleBackground)
            Spacer()
        }
        
    }
}
