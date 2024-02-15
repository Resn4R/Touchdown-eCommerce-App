//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Vito Borghi on 15/02/2024.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZSTACK
            .background {
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color(red: product.bgColour.red, green: product.bgColour.green, blue: product.bgColour.blue))
            }
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }//: VSTACK
    }
}

#Preview {
    ProductItemView(product: products[0])
        .padding()
        .background(colorBackground)
}
