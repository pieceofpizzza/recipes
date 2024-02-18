//
//  ViewRecipeViewModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 13.12.2023.
//

import Combine
import SwiftUI

class ViewRecipeViewModel: ObservableObject {
//    private weak var parentVM: ViewModel?
    @Published var recipe: Recipe
    private let hideAction: (() -> Void)?
    private let addAction: ((Recipe) -> Void)?
    private let modifyAction: ((Recipe) -> Void)?
    
    let noAddAction: Bool
    let noModifyAction: Bool
    
    init(recipe: Recipe, hideAction: (() -> Void)? = nil, addAction: ((Recipe) -> Void)? = nil, modifyAction: ((Recipe) -> Void)? = nil) {
        self.recipe = recipe
        self.hideAction = hideAction
        self.addAction = addAction
        self.modifyAction = modifyAction
        noAddAction = addAction == nil
        noModifyAction = modifyAction == nil
    }

    
    func pressHelp() {
        print("pressHelp")
    }
    
    func hide() {
        hideAction?()
    }
    
    func add(recipe: Recipe) {
        addAction?(recipe)
        hide()
    }
    
    func back(_ recipe: Recipe) {
        modifyAction?(recipe)
        hide()
    }
}

extension ViewRecipeViewModel: ViewMaker {
    func getView() -> any View {
        ViewRecipeView(vm: self)
    }
}
