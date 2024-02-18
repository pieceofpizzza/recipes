//
//  Date+ext.swift
//  recipes
//
//  Created by Дарина Лисанова on 18.02.2024.
//

import Foundation
extension Date {
    
    enum DateFormat: String {
        case hhmm = "HH:mm"
    }
    
    func toString(with format: Date.DateFormat) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format.rawValue
        return formatter.string(from: self)
    }
}
