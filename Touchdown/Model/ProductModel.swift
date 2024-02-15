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
    let bgColor: [Double]
}
