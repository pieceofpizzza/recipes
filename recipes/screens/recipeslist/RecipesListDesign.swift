//
//  RecipesListDesign.swift
//  recipes
//
//  Created by Дарина Лисанова on 06.09.2023.
//

import SwiftUI

extension RecipesList {
    struct Design {
        static let title = "Каталог рецептов"
        static let titleFont = Font.title3
        static let titleForeground = Color.white
        static let titleBackground = Color.gray
        
        struct recipeTitle {
            static let recipeTitleFont = Font.title
            static let recipeTitleForeground = Color.black
        }
        
        struct recipeCalories {
            static let recipeCaloriesFont = Font.title
            static let recipeCaloriesForeground = Color.gray
        }
    }
}
