//
//  ContentView.swift
//  Touchdown
//
//  Created by Vito Borghi on 10/02/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var cart: ShoppingCart
    @State private var selectedCategory: String = categories[0].name
    
    private var filteredProducts: [Product] { products.filter({ $0.category == selectedCategory }) }
    
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
                            
                            CategoryGridView(selectedCategory: $selectedCategory)
                            
                            ProductTitleView(title: $selectedCategory)
                            
                            LazyVGrid(columns: gridLayout) {
                                if filteredProducts.isEmpty {
                                    Text("There are no products in this category.")
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.center)
                                        .offset(x: 95)
                                        .padding(.vertical)
                                }
                                else {
                                    ForEach(filteredProducts) { product in
                                        NavigationLink {
                                            ProductDetailView(product: product)
                                        } label: {
                                            ProductItemView(product: product)
                                        }
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
