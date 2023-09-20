//
//  PagedModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 13.09.2023.
//

import Foundation
import SwiftUI

enum Paged {
    enum Flow: Int, Identifiable {
        case recipesList = 0
        case addRecipe = 1
        case favourites = 2
        
        var id: Int {
            self.rawValue
        }
        
//        var title: String {
//            switch self {
//            case .recipesList: return "Recipes"
//            case .addRecipe: return "Add"
//            case .favourites: return "Favourites"
//            }
//        }
        
        var image: Image {
            switch self {
            case .recipesList: return Image(systemName: "list.bullet.clipboard")
            case .addRecipe: return Image(systemName: "plus")
            case .favourites: return Image(systemName: "heart")
            }
        }
    }
}


