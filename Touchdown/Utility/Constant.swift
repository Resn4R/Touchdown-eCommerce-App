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
let brands: [Brand] = Bundle.main.decode("brand.json")



let sampleCartItem: ItemInCart = ItemInCart(product: products[0], size: "L", quantity: 2)
var sampleShoppingCart: ShoppingCart {
    let sampleCartItem2: ItemInCart = ItemInCart(product: products[1], size: "M", quantity: 1)
    let sampleCartItem3: ItemInCart = ItemInCart(product: products[2], size: "S", quantity: 4)

    let cart = ShoppingCart()
    cart.selectedItems.append(sampleCartItem)
    cart.selectedItems.append(sampleCartItem2)
    cart.selectedItems.append(sampleCartItem3)
    return cart
}

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
