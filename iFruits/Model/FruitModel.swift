//
//  FruitModel.swift
//  iFruits
//
//  Created by Elfana Anamta Chatya on 28/01/24.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

