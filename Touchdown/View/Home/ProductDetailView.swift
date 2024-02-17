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
            
        VStack(alignment: .leading, spacing: 5) {
            //NAVBAR
            ProductDetailNavBarView(product: product)
                .padding([.horizontal, .bottom])
            
            // HEADER
            HeaderDetailView(product: product)
                .padding([.bottom, .horizontal])
            
            // DETAIL TOP
            // DETAIL BOTTOM
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVOURITES
            // ADD TO CART
                
            Spacer()
        }//: VStack
            .padding()
            .background (
                Color (
                    red: product.bgColour.red,
                    green: product.bgColour.green,
                    blue: product.bgColour.blue
                )
                .ignoresSafeArea()
            )
    }
}

#Preview {
    ProductDetailView(product: products[0])
}
