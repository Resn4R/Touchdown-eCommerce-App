//
//  Shop.swift
//  Touchdown
//
//  Created by Vito Borghi on 26/02/2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProducts = false
    @Published var selectedProduct: Product?
}
