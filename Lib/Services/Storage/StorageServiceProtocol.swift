//
//  StorageServiceProtocol.swift
//  recipes
//
//  Created by Дарина Лисанова on 13.12.2023.
//

import Foundation
protocol StorageServiceProtocol {
    func save(recipes: [Recipe])
    func load() -> [Recipe]
    func drop()
}
