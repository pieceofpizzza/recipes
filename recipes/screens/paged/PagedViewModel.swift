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

    let service: StorageServiceProtocol = StorageService()
    
    var recipes: CurrentValueSubject<[Recipe], Never> = CurrentValueSubject([])
    init() {
        loadRecipes()
    }
    func loadRecipes() {
        recipes.send(service.load())
    }
    
    let flowItems: [Paged.Flow] = [.recipesList, .favourites]
    
    func press(item: Paged.Flow) {
        currentFlowItem = item
    }
    
    func getRecipesListView() -> AnyView {
        let vm = RecipesListViewModel(parentVM: self)
        return AnyView(vm.getView())
    }
    
    
    func getFavouritesView() -> AnyView {
        let vm = FavouritesViewModel(parentVM: self)
        return AnyView(vm.getView())
    }
    
    func pressLike(on recipe: Recipe) {
        let index: Int = recipes.value.firstIndex(where: { $0.id == recipe.id })!
        var temp = recipe
        temp.isLiked.toggle()
        recipes.value[index] = temp
        service.save(recipes: recipes.value)
    }
    
    func add(recipe: Recipe) {
        recipes.value.append(recipe)
        service.save(recipes: recipes.value)
    }
    
    func modify(recipe: Recipe) {
        let index: Int = recipes.value.firstIndex(where: { $0.id == recipe.id })!
        recipes.value[index] = recipe
        service.save(recipes: recipes.value)
    }
}
