//
//  recipe_appApp.swift
//  recipe-app
//
//  Created by Lasse Lang on 31.10.22.
//

import SwiftUI

@main
struct recipe_appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(recipe: Recipe(name: "test", Ingredients: [Ingredient(name: "TEst", count: 1, unit: "tl"), Ingredient(name: "TEst", count: 1, unit: "tl"), Ingredient(name: "TEst", count: 1, unit: "tl")], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut"))
        }
    }
}
