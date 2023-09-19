//
//  RecipesListModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 06.09.2023.
//

import Foundation

enum RecipesList {
    struct Recipe: Identifiable {
        var id: UUID = UUID()
        let title: String
        let calories: Int
    }
}
