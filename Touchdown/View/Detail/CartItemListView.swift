//
//  CartItemListView.swift
//  Touchdown
//
//  Created by Vito Borghi on 27/02/2024.
//

import SwiftUI

struct CartItemListView: View {
    //@EnvironmentObject var cart: ShoppingCart
    
    @State var cartItem: ItemInCart
    
    @State private var itemQuantity = 0
    
    var body: some View {
        HStack {
            Image(cartItem.product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(cartItem.product.name)
                    .font(.headline)
                Text(cartItem.product.formattedPrice)
                    .font(.subheadline)
            }
            
            
            Spacer()
            
            HStack {
                
                VStack {
                    Text("Quantity")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
//                    TextField("Item Quantity", text: $itemQuantity)
//                        .textFieldStyle(.roundedBorder)
//                        .frame(width: 25)
//                        .onChange(of: itemQuantity) { oldValue, newValue in
//                            cartItem.quantity = Int(newValue) ?? Int(oldValue)!
//                        }
//                        .keyboardType(.decimalPad)
                    
                    HStack  {
                        Button {
                            if itemQuantity > 1 { itemQuantity -= 1 }
                        } label: {
                            Image(systemName: "minus.circle")
                        }
                                
                    Text("\(itemQuantity)")
                        .foregroundStyle(.red)
                    
                        Button {
                            itemQuantity += 1
                        } label: {
                            Image(systemName: "plus.circle")
                        }
                    }
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
                .padding(.trailing, 3)
                
                Button {
                    //prompt confirmation
                    //delete from cart
                } label: {
                    Image(systemName: "trash")
                        .font(.title3)
                        .foregroundStyle(.red)
                }
            }
        }//: HSTACK
        .onAppear { itemQuantity = cartItem.quantity }
    }
}

#Preview {
    CartItemListView(cartItem: sampleCartItem)
        .padding()
        .background(colorBackground)
}
