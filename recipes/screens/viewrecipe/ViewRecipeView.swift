//
//  ViewRecipeView.swift
//  recipes
//
//  Created by Дарина Лисанова on 13.12.2023.
//

import SwiftUI

struct ViewRecipeView: View {
    typealias Design = ViewRecipe.Design
    
    @ObservedObject var vm: ViewRecipeViewModel
    
    @State private var title: String = ""
    @State private var timeOfCooking: Date = Date()
    @State private var timeOfCookingS: String = ""
    @State private var ingridients: [IngridientModel] = [IngridientModel.emptyOne]
    @State private var calories: String = "0"
    @State private var recipeText: String = ""
    @State private var timeOfCookingIsFocused: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Button {
                    let recipe = Recipe(id: vm.recipe.id, title: title, timeOfCooking: timeOfCooking, ingridients: ingridients, recipeText: recipeText, calories: Int(calories) ?? .zero, isLiked: vm.recipe.isLiked)
                    vm.back(recipe)
                } label: {
                    Text("Обновить")
                        .padding()
                        .background(Color.white)
                }.disabled(vm.noModifyAction)
                Button {
                    vm.add(recipe: Recipe(id: UUID(), title: title, timeOfCooking: timeOfCooking, ingridients: ingridients, recipeText: recipeText, calories: Int(calories) ?? .zero, isLiked: false) )
                } label: {
                    Text("Добавить")
                        .padding()
                        .background(Color.white)
                }.disabled(vm.noAddAction)
            }
            
            TextField(text: $title, prompt: Text("Наименование рецепта"), label: { Text("Наименование") })
            HStack {
                Text("Время приготовления:")
                Text(timeOfCookingS)
                    .onTapGesture {
                        timeOfCookingIsFocused = true
                    }
                    .onChange(of: timeOfCooking) { newDate in
                        timeOfCookingS = newDate.toString(with: .hhmm)
                    }
            }
            TextField(text: $calories, prompt: Text("Калории"), label: { Text("Калории") })
            TextEditor(text: $recipeText)
            if timeOfCookingIsFocused {
                     DatePicker("", selection: $timeOfCooking, displayedComponents: [.hourAndMinute])
                        .datePickerStyle(.wheel)
                        .accentColor(.green)
                }
        }
        .onAppear {
            title = vm.recipe.title
            timeOfCooking = vm.recipe.timeOfCooking
            calories = "\(vm.recipe.calories)"
            recipeText = vm.recipe.recipeText
            
            
        }
    }
}
