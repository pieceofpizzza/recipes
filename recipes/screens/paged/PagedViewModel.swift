//
//  PagedViewModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 13.09.2023.
//

import Foundation
import Combine
import SwiftUI

class PagedViewModel: ObservableObject {
    @Published var currentFlowItem: Paged.Flow = .recipesList
    
    let flowItems: [Paged.Flow] = [.recipesList, .favourites, .addRecipe]
    
    func press(item: Paged.Flow) {
        currentFlowItem = item
    }
    
    func getRecipeListView() -> AnyView {
        AnyView(RecipesListView())
    }
    
    func getAddRecipeView() -> AnyView {
        AnyView(AddRecipeView())
    }
    
    func getFavouritesView() -> AnyView {
        let vm = FavouritesViewModel(parentVM: self)
        return AnyView(vm.getView())
    }
}
