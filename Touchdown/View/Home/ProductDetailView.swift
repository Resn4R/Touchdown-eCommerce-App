//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Vito Borghi on 17/02/2024.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    @Environment (\.dismiss) var dismiss
    @State var product: Product
    
    // MARK: - BODY
    var body: some View {
            
            VStack {

            }//: VStack
            .padding()
            .background(Color(red: product.bgColour.red, green: product.bgColour.green, blue: product.bgColour.blue))
    }
}

#Preview {
    ProductDetailView(product: products[0])
}
