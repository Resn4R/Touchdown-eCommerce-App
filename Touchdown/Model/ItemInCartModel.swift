//
//  ItemInCartModel.swift
//  Touchdown
//
//  Created by Vito Borghi on 27/02/2024.
//

import Foundation

struct ItemInCart: Identifiable {
    let id = UUID()
    
    let product: Product
    let size: String
    let quantity: Int
}
