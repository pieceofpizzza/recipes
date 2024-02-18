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
    
    @ObservedObject var vm: FavouritesViewModel
    
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
            .background(Color.gray)
            
            List {
                ForEach(vm.recipes) { recipe in
                    FavouriteRecipeItem(recipe: recipe) {
                        vm.pressLike(on: recipe)
                    }
                }
            }
        }
    }
}

struct FavouriteRecipeItem: View {
    typealias Design = Favourites.Design.RecipeItem
    
    let recipe: Recipe
    let pressLike: () -> Void
    
    var body: some View{
        HStack {
            Text(recipe.title)
                .foregroundColor(Design.RecipeTitle.recipeTitleForeground)
            Spacer()
            Text("\(recipe.calories)")
                .foregroundColor(Design.RecipeCalories.recipeCaloriesForeground)
            Button {
                pressLike()
            } label: {
                if recipe.isLiked {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.green)
                } else {
                    Image(systemName: "heart")
                        .foregroundColor(.gray)
                }
               
            }

        }
    }
}
