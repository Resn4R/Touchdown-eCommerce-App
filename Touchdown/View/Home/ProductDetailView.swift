//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Vito Borghi on 17/02/2024.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    @State var product: Product
    
    // MARK: - BODY
    var body: some View {
            
        NavigationStack {
            VStack(alignment: .leading, spacing: 5) {
                //NAVBAR
                ProductDetailNavBarView()
                    .padding(.horizontal)
                
                // HEADER
                HeaderDetailView(product: product)
                    .padding([.bottom, .horizontal])
                
                // DETAIL TOP
                ProductDetailTopView(product: product)
                    .padding(.horizontal)
                    .zIndex(1)
                
                // DETAIL BOTTOM
                VStack(alignment: .center, spacing: 0) {
                    // RATINGS + SIZES
                    RatingsSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 20)
                    
                    // DESCRIPTION
                    ScrollView(.vertical) {
                        Text(product.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                        
                    }//: SCROLL
                    
                    // QUANTITY + FAVOURITES
                    QuantityView(product: product)
                    
                    Spacer()
                }//: VSTACK
                .padding(.horizontal)
                .background (
                    Color.white
                        .clipShape(CustomShape())

                        .padding(.top)
                        .frame(width: 395, height: 600)
                )
            }//: VStack
            .background (
                Color (
                    red: product.bgColour.red,
                    green: product.bgColour.green,
                    blue: product.bgColour.blue
                )
                .ignoresSafeArea()
            )
            .navigationBarBackButtonHidden()
        }//: NAVSTACK
    }
}

#Preview {
    ProductDetailView(product: products[0])
}
