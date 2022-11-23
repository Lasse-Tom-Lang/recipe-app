//
//  IngredientsList.swift
//  recipe-app
//
//  Created by Lasse Lang on 12.11.22.
//

import SwiftUI

struct IngredientsList: View {
    var recipe: Recipe
    
    var body: some View {
        NavigationStack {
            List(0..<recipe.Ingredients.count) { a in
                Text("Hi")
            }
            .navigationTitle("Ingredients for " + recipe.name)
        }
    }
}

struct IngredientsList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsList(recipe: Recipe(name: "default", Ingredients: [Ingredient(name: "TEst", count: 1, unit: "tl"), Ingredient(name: "TEst", count: 1, unit: "tl")], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut"))
    }
}
