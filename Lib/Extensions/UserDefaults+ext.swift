//
//  UserDefaults+ext.swift
//  recipes
//
//  Created by Дарина Лисанова on 13.12.2023.
//

import Foundation
extension UserDefaults {
    
    private enum Keys {
        static let Recipes = "my_recipes"
    }
    
    static var recipesArr: [Recipe]? {
        get {
            if let data = standard.object(forKey: Keys.Recipes) as? Data,
               let recipes = try? JSONDecoder().decode([Recipe].self, from: data) {
                return recipes
            } else {
                return nil
            }
        }
        set(v) {
            let data = try? JSONEncoder().encode(v)
            standard.set(data, forKey: Keys.Recipes)
        }
    }
}
