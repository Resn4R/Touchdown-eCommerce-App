//
//  ShoppingCartView.swift
//  Touchdown
//
//  Created by Vito Borghi on 27/02/2024.
//

import SwiftUI

struct ShoppingCartView: View {
    @EnvironmentObject var cart: ShoppingCart
    
    var body: some View {
        
        VStack {
            Text("Shopping cart")
            
            Divider()
            
            ForEach(cart.selectedItems) { item in
                CartItemListView(cartItem: item)
                    .padding(.horizontal)
                Divider()
            }//: LOOP
        }//: VSTACK
        
    }
}

#Preview {
    ShoppingCartView()
        .environmentObject(sampleShoppingCart)
}
