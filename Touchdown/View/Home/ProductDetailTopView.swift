//
//  ProductDetailTopView.swift
//  Touchdown
//
//  Created by Vito Borghi on 17/02/2024.
//

import SwiftUI

struct ProductDetailTopView: View {
    @State var product: Product
    @State private var isAnimating = false
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //PRICE
            VStack (alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }//: VSTACK
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //PHOTO
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }//: HSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    ProductDetailTopView(product: products[0])
}
