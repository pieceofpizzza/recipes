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
                Text("Избранное")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
                    .padding(.top, 70)
                Spacer()
                
            }
            .background(Color.gray)
            Spacer()
            
//            List {
//                ForEach(vm.recipes) { recipe in
//                    HStack {
//                        Text(recipe.title)
//                            .foregroundColor(Design.textcolor)
//                        Spacer()
//                        Text("\(recipe.calories)")
//                            .foregroundColor(Design.textcolor)
//                    }
//                }
//            }
        }

    }
}
