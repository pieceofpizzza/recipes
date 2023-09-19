//
//  ViewMaker.swift
//  recipes
//
//  Created by Дарина Лисанова on 19.09.2023.
//
import SwiftUI

/**
 Protocol for View source
 */
protocol ViewMaker {
    
    /**
     Default view version
     */
    func getView() -> any View
    
}
