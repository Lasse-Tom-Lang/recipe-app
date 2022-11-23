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
}

struct Ingredient {
    var name: String
    var count: Int
    var unit: String
}
