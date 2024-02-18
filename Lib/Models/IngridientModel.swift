//
//  IngridientModel.swift
//  recipes
//
//  Created by Дарина Лисанова on 20.12.2023.
//

import Foundation
struct IngridientModel: Identifiable, Codable {
    let id: UUID
    let title: String
    let amount: Double
    let unitOfMeasurment: UnitOfMeasurment
    
    static var emptyOne: IngridientModel {
        IngridientModel(id: UUID(), title: "", amount: .zero, unitOfMeasurment: .piece)
    }
}

enum UnitOfMeasurment: String, Codable {
    case kg
    case gr
    case ml
    case liter
    case piece
}
