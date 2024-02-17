//
//  ProductDetailNavBarView.swift
//  Touchdown
//
//  Created by Vito Borghi on 17/02/2024.
//

import SwiftUI

struct ProductDetailNavBarView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        HStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
            }
            
            Spacer()
            
            Button {
                //add to cart
            } label: {
                Image(systemName: "cart")
            }
        }//: HSTACK
        .font(.system(size: 25, weight: .regular))
        .foregroundStyle(.white)
    }
}

#Preview {
    
    ProductDetailNavBarView()
        .padding()
        .background( Color(red: products[1].bgColour.red, green:  products[1].bgColour.green, blue:  products[1].bgColour.blue) )
}
