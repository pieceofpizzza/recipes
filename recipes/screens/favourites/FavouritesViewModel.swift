//
//  FavouritesViewModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 19.09.2023.
//

import Combine
import SwiftUI

class FavouritesViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    
    internal var cancellables: Set<AnyCancellable> = []
    
    private weak var parentVM: PagedViewModel?
    
    init(parentVM: PagedViewModel?) {
        self.parentVM = parentVM
        subscription()
    }
    
    deinit {
        parentVM = nil
        cancellables.forEach({ $0.cancel() })
        cancellables = []
    }
    
    func pressLike(on recipe: Recipe) {
        parentVM?.pressLike(on: recipe)
    }
    
    func subscription() {
        parentVM?.recipes
            .map{ $0.filter({ $0.isLiked })  }
            .sink(receiveValue: { value in
            self.recipes = value
        })
        .store(in: &cancellables)
    }
}


extension FavouritesViewModel: ViewMaker {
    func getView() -> any View {
        FavouritesView(vm: self)
    }
}

