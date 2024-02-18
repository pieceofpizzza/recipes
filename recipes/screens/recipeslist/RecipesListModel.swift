//
//  RecipesListModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 06.09.2023.
//

import Foundation

enum RecipesList {
    struct ViewItemData: Identifiable {
    let id: Double = Date().timeIntervalSince1970
    let recipe: Recipe
    let isNew: Bool
    }
}



