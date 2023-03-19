//
//  CookingView.swift
//  recipe-app
//
//  Created by Lasse Lang on 19.03.23.
//

import SwiftUI

struct CookingView: View {
    let recipe: Recipe
    let step = 1
    var body: some View {
        HStack() {
            Button("Back") {
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .font(.title2)
            
            Spacer()
            
            Button("Next") {
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
        }
        .padding(.horizontal, 30.0)
    }
}

struct CookingView_Previews: PreviewProvider {
    static var previews: some View {
        CookingView(recipe: Recipe(name: "Cake", Ingredients: [Ingredient(id: 0, name: "Carott", count: 1, unit: "tl"), Ingredient(id: 1, name: "Apple", count: 1, unit: "tl"), Ingredient(id: 2, name: "Egg", count: 1, unit: "tl")], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut", PersonCount: 4))
    }
}
