//
//  IngredientsList.swift
//  recipe-app
//
//  Created by Lasse Lang on 12.11.22.
//

import SwiftUI

struct IngredientsList: View {
    var Recipe: String
    
    var body: some View {
        NavigationStack {
            List(1..<30) { a in
                Text("Hi")
            }
            .navigationTitle("Ingredients for " + Recipe)
        }
    }
}

struct IngredientsList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsList(Recipe: "default")
    }
}
