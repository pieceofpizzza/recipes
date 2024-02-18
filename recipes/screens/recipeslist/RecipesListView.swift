//
//  ContentView.swift
//  recipes
//
//  Created by Дарина Лисанова on 06.09.2023.
//

import SwiftUI

struct RecipesListView: View {
    typealias Design = RecipesList.Design
    @ObservedObject var vm: RecipesListViewModel
    @State var showRecipe: RecipesList.ViewItemData? = nil
    
    var body: some View {
        VStack{
            ZStack{
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
                
                HStack{
                    Spacer()
                    Button {
                        showRecipe = RecipesList.ViewItemData(recipe: Recipe.emptyRecipe, isNew: true)
                    } label: {
                        Image(systemName: "plus")
                            .tint(.green)
                            .frame(width: 20, height: 20)
                            .padding()
                    }

                }
            }
            
            VStack(spacing: 20) {
                HStack { Spacer() }
                ForEach(vm.recipes) { recipe in
                    RecipeItem(
                        recipe: recipe,
                        pressLike: { vm.pressLike(on: recipe) },
                        pressItem: {
                            showRecipe = RecipesList.ViewItemData(recipe: recipe, isNew: false)
                        }
                    )
                    
//                    Spacer()
                }
            }
            .padding(10)
            .background(Color.white.cornerRadius(16))
            .padding(.horizontal, 20)
            .padding(.vertical, 40)
            .background(Color.gray)
        }
        .sheet(item: $showRecipe) { item in
            AnyView(ViewRecipeViewModel(
                recipe: item.recipe,
                hideAction: { showRecipe = nil },
                addAction: item.isNew ? { vm.add(recipe: $0) } : nil,
                modifyAction: item.isNew ? nil : { vm.modify(recipe: $0) } ).getView())
        }
    }
}

struct RecipeItem: View {
    typealias Design = RecipesList.Design.RecipeItem
    
    let recipe: Recipe
    let pressLike: () -> Void
    let pressItem: () -> Void
    
    var body: some View{
        HStack {
            Button {
                pressItem()
            } label: {
                Text(recipe.title)
                    .foregroundColor(Design.RecipeTitle.recipeTitleForeground)
            }


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


