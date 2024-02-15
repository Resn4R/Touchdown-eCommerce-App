//
//  ProductModel.swift
//  Touchdown
//
//  Created by Vito Borghi on 15/02/2024.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var bgColour: (red: Double, green: Double, blue: Double) { return (color[0], color[1], color[2]) }
    
    var formattedPrice: String { "£\(price)"}
}
