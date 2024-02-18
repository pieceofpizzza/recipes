//
//  RecipesListViewModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 06.09.2023.
//

import Foundation
import Combine
import SwiftUI

class RecipesListViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    
    private weak var parentVM: PagedViewModel?
    
    internal var cancellables: Set<AnyCancellable> = []
    
    init(parentVM: PagedViewModel?) {
        self.parentVM = parentVM
        subscription()
    }
    
    deinit {
        cancellables.forEach({ $0.cancel() })
        cancellables = []
    }
    
    func pressLike(on recipe: Recipe) {
        parentVM?.pressLike(on: recipe)
    }
    
    func add(recipe: Recipe) {
        parentVM?.add(recipe: recipe)
    }
    
    func modify(recipe: Recipe) {
        parentVM?.modify(recipe: recipe)
    }
    
    func subscription() {
        parentVM?.recipes.sink(receiveValue: { value in
            self.recipes = value
        })
        .store(in: &cancellables)
    }
}

extension RecipesListViewModel: ViewMaker {
    func getView() -> any View {
        RecipesListView(vm: self)
    }
}
