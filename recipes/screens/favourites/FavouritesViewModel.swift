//
//  FavouritesViewModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 19.09.2023.
//

import Combine
import SwiftUI

class FavouritesViewModel: ObservableObject {
    private weak var parentVM: PagedViewModel?
    
    
    init(parentVM: PagedViewModel?) {
        self.parentVM = parentVM
    }
    
    deinit {
        parentVM = nil
    }
    
    func pressHelp() {
        print("pressHelp")
    }
}


extension FavouritesViewModel: ViewMaker {
    func getView() -> any View {
        FavouritesView(viewModel: self)
    }
}

