//
//  Recipe.swift
//  recipe-app
//
//  Created by Lasse Lang on 13.11.22.
//

import Foundation

struct Recipe {
    var name: String
    var Ingredients: [Ingredient]
    var description: String
    var PersonCount: Int
}

struct Ingredient: Identifiable {
    var id: Int
    var name: String
    var count: Int
    var unit: String
}
