//
//  ProductDetailNavBarView.swift
//  Touchdown
//
//  Created by Vito Borghi on 17/02/2024.
//

import SwiftUI

struct ProductDetailNavBarView: View {
    @State var product: Product
    var body: some View {
        HStack {
            Button {
                //dismiss view
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                //add to cart
            } label: {
                Image(systemName: "cart")
                    .foregroundStyle(.white)
            }
                
        }//: HSTACK
        .padding()
        .background(
            Color(red: product.bgColour.red, green: product.bgColour.green, blue: product.bgColour.blue)
        )
    }
}

#Preview {
    ProductDetailNavBarView(product: products[0])
}
