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
            
            HStack{
                Spacer()
                Text("Total(Including VAT): \(cart.totalPrice.formatted(.currency(code: "GBP")))")
                    .font(.callout)
            }
            .padding([.vertical, .trailing])
        }//: VSTACK
        .onAppear {
            for item in cart.selectedItems {
                cart.totalPrice += item.product.price * item.quantity
            }
        }
    }
}

#Preview {
    ShoppingCartView()
        .environmentObject(sampleShoppingCart)
}
