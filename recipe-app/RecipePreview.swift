//
//  ContentView.swift
//  recipe-app
//
//  Created by Lasse Lang on 31.10.22.
//

import SwiftUI

struct RecipePreview: View {
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
                HStack() {
                    Spacer()
                    Button("Start cooking") {
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                .padding(.bottom)
            }
            .ignoresSafeArea()
        }
    }
}

struct RecipePreview_Previews: PreviewProvider {
    static var previews: some View {
        RecipePreview(recipe: Recipe(name: "Cake", Ingredients: [Ingredient(id: 0, name: "Carott", count: 1, unit: "tl"), Ingredient(id: 1, name: "Apple", count: 1, unit: "tl"), Ingredient(id: 2, name: "Egg", count: 1, unit: "tl")], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut", PersonCount: 4))
    }
}
