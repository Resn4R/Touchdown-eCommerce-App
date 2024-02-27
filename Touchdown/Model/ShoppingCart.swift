//
//  Shop.swift
//  Touchdown
//
//  Created by Vito Borghi on 26/02/2024.
//

import Foundation

class ShoppingCart: ObservableObject {
    @Published var selectedItems: [ItemInCart]
    @Published var totalPrice = 0.00.formatted(.currency(code: "GBP"))
    
    init() {
        self.selectedItems = []
    }
}
