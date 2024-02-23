//
//  ContentView.swift
//  Touchdown
//
//  Created by Vito Borghi on 10/02/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical) {
                        VStack(spacing: 0) {
                            ImageHeaderTabView()
                                .frame(height: 250)
                            
                            CategoryGridView()
                            
                            ProductTitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout) {
                                ForEach(products) { product in
                                    NavigationLink {
                                        ProductDetailView(product: product)
                                    } label: {
                                        ProductItemView(product: product)
                                    }
                                }
                            }
                            .padding(15)
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }//: VStack
                    }//: SCROLL
                }//: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            }//:ZStack
        }
    }
}

#Preview {
    ContentView()
}
