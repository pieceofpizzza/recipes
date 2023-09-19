//
//  AddRecipeView.swift
//  recipes
//
//  Created by Дарина Лисанова on 06.09.2023.
//

import SwiftUI

struct AddRecipeView: View {
    typealias Design = AddRecipe.Design
    @ObservedObject var vm: AddRecipeViewModel = AddRecipeViewModel()
    
    var body: some View {
        VStack {
            Text(Design.title)
                .font(.title3)
                .foregroundColor(.gray)
                .padding(.horizontal, 10)
                .padding(.top, 50)

            Spacer()
                    Text("Наименование")
                        .foregroundColor(.black)
                    Text("Описание")
                        .foregroundColor(.black)
            Spacer()
        }
        .padding()
    }
}
