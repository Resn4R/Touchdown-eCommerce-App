//
//  Constant.swift
//  Touchdown
//
//  Created by Vito Borghi on 10/02/2024.
//

import SwiftUI

// DATA
let players: [PlayerModel] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")

// COLOR
let colorBackground = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray4)

// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
// API
// IMAGE
// FONT
// STRING
// MISC
