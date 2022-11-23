//
//  ContentView.swift
//  recipe-app
//
//  Created by Lasse Lang on 31.10.22.
//

import SwiftUI

struct ContentView: View {
    let recipe: Recipe
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomLeading) {
                    Image("testImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(recipe.name)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding()
                        .fontWeight(.bold)
                }
                NavigationLink(
                    destination:
                        IngredientsList(recipe: recipe),
                    label: {
                        Label(
                            "Ingredients",
                            systemImage: "carrot"
                        )
                    }
                )
                .padding([.top, .leading])
                Text(recipe.description)
                    .padding(.horizontal)
                    .padding(.top, 5.0)
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipe: Recipe(name: "test", Ingredients: [Ingredient(name: "TEst", count: 1, unit: "tl"), Ingredient(name: "TEst", count: 1, unit: "tl"), Ingredient(name: "TEst", count: 1, unit: "tl")], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut"))
    }
}
