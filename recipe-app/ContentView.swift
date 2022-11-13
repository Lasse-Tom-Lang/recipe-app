//
//  ContentView.swift
//  recipe-app
//
//  Created by Lasse Lang on 31.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomLeading) {
                    Image("testImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Name")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding()
                        .fontWeight(.bold)
                }
                NavigationLink(
                    destination:
                        IngredientsList(Recipe: Recipe(name: "test", Ingredients: [Ingredient(name: "TEst", count: 1, unit: "tl"), Ingredient(name: "TEst", count: 1, unit: "tl"), Ingredient(name: "TEst", count: 1, unit: "tl")])),
                    label: {
                        Label(
                            "Ingredients",
                            systemImage: "carrot"
                        )
                    }
                )
                .padding()
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
