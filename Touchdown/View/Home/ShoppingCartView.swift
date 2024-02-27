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
            
            ForEach(cart.selectedItems) { item in
                Section {
                    Text("\(item.product.name)")
                    Text("\(item.product.category)")
                    Text("\(item.product.price)")
                }//:Section
            }//: LOOP
        }//: VSTACK
        
    }
}

#Preview {
    ShoppingCartView()
        .environmentObject(sampleShoppingCart)
}
