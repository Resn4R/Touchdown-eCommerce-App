//
//  QuantityView.swift
//  Touchdown
//
//  Created by Vito Borghi on 18/02/2024.
//

import SwiftUI

struct QuantityView: View {
    @State var quantity = 1
    @State private var isFavourite = false
    var product: Product
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
                        
            Button {
                //add to favourites
                
                isFavourite.toggle()
            } label: {
                Image(systemName: isFavourite ? "star.fill" : "star")
                    .foregroundColor(.yellow)
                    .font(.system(size: 25))
            }
            
            Spacer()
            
            Section {
                Button {
                    if quantity > 1 { quantity -= 1 }
                } label: {
                    Image(systemName: "minus.circle")
                }
                        
            Text("\(quantity)")
                .foregroundStyle(.red)
            
                Button {
                    quantity += 1
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
            .font(.system(size: 18))
            .fontWeight(.semibold)
            .foregroundStyle(.black)
        
        //Spacer()
        
        Button{
            //add to cart
        } label: {
            Text("ADD TO CART")
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .background(
                    Color(
                        red: product.bgColour.red,
                        green: product.bgColour.green,
                        blue: product.bgColour.blue
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                )
        }
        .padding(.leading, 10)
        }//: HSTACK
        .padding()
        .font(.headline)
    }
}

#Preview {
    QuantityView(product: products[0])
}
