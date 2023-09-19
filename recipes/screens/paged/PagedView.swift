//
//  PagedView.swift
//  recipes
//
//  Created by Дарина Лисанова on 13.09.2023.
//

import SwiftUI

struct PagedView: View {
    let vm: PagedViewModel = PagedViewModel()
    
    var body: some View {
        VStack(spacing: .zero) {
            PageContentView(vm: vm)
            PageSelectorView(vm: vm)
        }
        .ignoresSafeArea(.all)
    }
}

struct PageContentView: View {
    @ObservedObject var vm: PagedViewModel
    
    var body: some View {
        Group {
            switch vm.currentFlowItem {
            case .recipesList: vm.getRecipeListView()
            case .addRecipe: vm.getAddRecipeView()
            case .favourites: vm.getFavouritesView()
            }
        }
    }
}

struct PageSelectorView: View {
    typealias Design = Paged.Design.Selector
    
    @ObservedObject var vm: PagedViewModel
    
    var body: some View {
        HStack {
            ForEach(vm.flowItems) { flowItem in
                PageSelectorItemView(
                    isActive: flowItem == vm.currentFlowItem,
                    flowItem: flowItem,
                    press: {vm.press(item: flowItem)}
                )
            }
        }
        .padding(.bottom, 20)
        .background(Design.pagedPanelBack)
    }
}

struct PageSelectorItemView: View {
    typealias Design = Paged.Design.SelectorItem
    let isActive: Bool
    let flowItem: Paged.Flow
    let press: () -> Void
    
    var body: some View {
        HStack{
            Spacer()
            Button {
                press()
            } label: {

                flowItem.image.resizable().frame(width: Design.flowItemSide, height: Design.flowItemSide) .tint(Design.flowItemTint)
                    .padding()
                
            }
            Spacer()
        }
    }
}
