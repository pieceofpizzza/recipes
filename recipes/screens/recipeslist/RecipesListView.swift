//
//  ContentView.swift
//  recipes
//
//  Created by Дарина Лисанова on 06.09.2023.
//

import SwiftUI

struct RecipesListView: View {
    typealias Design = RecipesList.Design
    @ObservedObject var vm: RecipesListViewModel = RecipesListViewModel()
    @State var showAddRecipe: Bool = false
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
                    HStack {
                        Text(recipe.title)
                            .foregroundColor(Design.recipeTitle.recipeTitleForeground)
                        Spacer()
                        Text("\(recipe.calories)")
                            .foregroundColor(Design.recipeCalories.recipeCaloriesForeground)
                    }
                }
            }
        }
    }
}


