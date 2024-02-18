//
//  FavouritesDesign.swift
//  recipes
//
//  Created by Дарина Лисанова on 19.09.2023.
//
import SwiftUI

extension Favourites {
    
    struct Design {
        static let title = "Избранное"
        static let titleFont = Font.title3
        static let titleForeground = Color.white
        static let titleBackground = Color.gray
        struct RecipeItem {
            struct RecipeTitle {
                static let recipeTitleFont = Font.title
                static let recipeTitleForeground = Color.black
            }
            struct RecipeCalories {
                static let recipeCaloriesFont = Font.title
                static let recipeCaloriesForeground = Color.gray
            }
        }
    }
    
}
