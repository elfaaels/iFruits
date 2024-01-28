//
//  ContentView.swift
//  iFruits
//
//  Created by Elfana Anamta Chatya on 28/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruitItem in
                    // Go to Detail View
                    NavigationLink(destination: FruitDetailView(fruit: fruitItem)) {
                        // List of Content Items
                        FruitRowView(fruit: fruitItem)
                            .padding(.vertical, 4)
                    }
                  
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isShowingSettings) {
                    SettingView()
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
