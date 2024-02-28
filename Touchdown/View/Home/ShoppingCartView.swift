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
                .padding(.horizontal)
            
            ForEach(cart.selectedItems) { item in
                Section {
                    CartItemListView(cartItem: item)
                    Divider()
                }
                .padding(.horizontal)
            }//: LOOP
        }//: VSTACK
        
    }
}

#Preview {
    ShoppingCartView()
        .environmentObject(sampleShoppingCart)
}
