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
            Text("For " + String(recipe.PersonCount) + " persons")
            List(recipe.Ingredients) { Ingredient in
                HStack() {
                    Text(Ingredient.name)
                    Spacer()
                    Text(String(Ingredient.count) + " " +  Ingredient.unit)
                }
            }
            .navigationTitle("Ingredients for " + recipe.name)
        }
    }
}

struct IngredientsList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsList(recipe: Recipe(name: "default", Ingredients: [Ingredient(id: 0, name: "TEst", count: 1, unit: "tl"), Ingredient(id: 1, name: "TEst", count: 1, unit: "tl")], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut", PersonCount: 4))
    }
}
