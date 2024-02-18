//
//  RecipeModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 30.11.2023.
//

import Foundation

struct Recipe: Identifiable, Codable {
    var id: UUID
    let title: String
    let timeOfCooking: Date
    let ingridients: [IngridientModel]
    let recipeText: String
    let calories: Int
    var isLiked: Bool
    
    static let emptyRecipe = Recipe(id: UUID(), title: "", timeOfCooking: Date(), ingridients: [], recipeText: "", calories: .zero, isLiked: false)
}


