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
        VStack{
            HStack {
                Spacer()
                Text(Design.title)
                    .font(Design.titleFont)
                    .tint(Design.titleTint)
                    .padding(.horizontal, 20)
                    .padding(.top, 50)
                Spacer()
                

            }
            .padding()
            .background(Design.titleBackground)

            Spacer()
            Text("Наименование")
                .foregroundColor(.black)
            Text("Описание")
                .foregroundColor(.black)
            Spacer()
        }
    }
}
