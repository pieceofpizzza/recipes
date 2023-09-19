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
                Text("Каталог рецептов")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
                    .padding(.top, 70)
                Spacer()
                
            }
            .background(Color.gray)
            
            List {
                ForEach(vm.recipes) { recipe in
                    HStack {
                        Text(recipe.title)
                            .foregroundColor(Design.textcolor)
                        Spacer()
                        Text("\(recipe.calories)")
                            .foregroundColor(Design.textcolor)
                    }
                }
            }
        }
    }
}


