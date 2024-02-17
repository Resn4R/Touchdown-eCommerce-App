//
//  ProductDetailNavBarView.swift
//  Touchdown
//
//  Created by Vito Borghi on 17/02/2024.
//

import SwiftUI

struct ProductDetailNavBarView: View {
    @Environment (\.dismiss) var dismiss
    @State var product: Product
    var body: some View {
        HStack {
            Button {
                dismiss()
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
        .font(.system(size: 25, weight: .regular))
    }
}

#Preview {
    
    ProductDetailNavBarView(product: products[0])
        .padding()
        .background( .black )
}
