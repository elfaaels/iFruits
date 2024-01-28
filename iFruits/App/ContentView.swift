//
//  ContentView.swift
//  iFruits
//
//  Created by Elfana Anamta Chatya on 28/01/24.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruitItem in
                    // Go to Detail View
                    NavigationLink(destination: FruitDetailView(fruit: fruitItem)) {
                        FruitRowView(fruit: fruitItem)
                            .padding(.vertical, 4)
                    }
                  
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
