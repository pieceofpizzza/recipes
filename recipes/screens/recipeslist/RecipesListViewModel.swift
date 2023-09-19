//
//  RecipesListViewModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 06.09.2023.
//

import Foundation
import Combine

class RecipesListViewModel: ObservableObject {
    let recipes: [RecipesList.Recipe] = [
        RecipesList.Recipe(title: "Бездрожжевые блинчики", calories: 3),
        RecipesList.Recipe(title: "Борщ", calories: 3),
        RecipesList.Recipe(title: "Бездрожжевые блинчики", calories: 3),
        RecipesList.Recipe(title: "Бездрожжевые блинчики", calories: 3),
        RecipesList.Recipe(title: "Бездрожжевые блинчики", calories: 3),
        RecipesList.Recipe(title: "Бездрожжевые блинчики", calories: 3),
    ]
}
