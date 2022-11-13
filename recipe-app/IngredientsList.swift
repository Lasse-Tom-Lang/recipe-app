//
//  IngredientsList.swift
//  recipe-app
//
//  Created by Lasse Lang on 12.11.22.
//

import SwiftUI

struct IngredientsList: View {
    var Recipe: Recipe
    
    var body: some View {
        NavigationStack {
            List(0..<Recipe.Ingredients.count) { a in
                Text("Hi")
            }
            .navigationTitle("Ingredients for " + Recipe.name)
        }
    }
}

struct IngredientsList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsList(Recipe: Recipe(name: "default", Ingredients: [Ingredient(name: "TEst", count: 1, unit: "tl"), Ingredient(name: "TEst", count: 1, unit: "tl")]))
    }
}
