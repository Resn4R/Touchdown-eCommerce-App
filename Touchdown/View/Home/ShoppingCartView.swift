//
//  ShoppingCartView.swift
//  Touchdown
//
//  Created by Vito Borghi on 27/02/2024.
//

import SwiftUI

struct ShoppingCartView: View {
    @EnvironmentObject var cart: ShoppingCart
    
    @State private var totalPrice = ""

    
    var body: some View {
        
        VStack {
            Text("Shopping cart")
            
            Divider()
                .padding(.horizontal)
            
            ForEach(cart.selectedItems) { item in
                Section {
                    CartItemListView(cartItem: item)
                        .onChange(of: item.quantity) { oldValue, newValue in
                            guard var total = Int(totalPrice) else { return }
                            total -= oldValue * item.product.price
                            total += newValue * item.product.price
                            totalPrice = String(total)
                        }
                    Divider()
                }
                .padding(.horizontal)
            }//: LOOP
            
            HStack{
                Spacer()
                Text("Total(Including VAT): \(totalPrice)")
                    .font(.callout)
            }
            .padding(.trailing)
        }//: VSTACK
        .onAppear {
            var total: Int = 0
            for item in cart.selectedItems {
                total += item.product.price * item.quantity
            }
            totalPrice = total.formatted(.currency(code: "GBP"))
        }
        
    }
}

#Preview {
    ShoppingCartView()
        .environmentObject(sampleShoppingCart)
}
