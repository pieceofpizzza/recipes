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
        case favourites = 1
        
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
            case .favourites: return Image(systemName: "heart")
            }
        }
    }
    
//    struct Recipe: Identifiable {
//        var id: Int
//        let title: String
//        let calories: Int
//        var isLiked: Bool
//    }
}


