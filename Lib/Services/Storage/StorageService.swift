//
//  StorageService.swift
//  recipes
//
//  Created by Дарина Лисанова on 13.12.2023.
//

import Foundation
class StorageService: StorageServiceProtocol {
    func save(recipes: [Recipe]) {
        UserDefaults.recipesArr = recipes
    }
    
    func load() -> [Recipe] {
        UserDefaults.recipesArr ?? []
    }
    
    func drop() {
        UserDefaults.recipesArr = nil
    }
}
