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
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        ImageHeaderTabView()
                            .frame(height: 250)
                        
                        CategoryGridView()
                        
                        ProductTitleView(title: "Helmets")
                        
                        FooterView()
                            .padding(.horizontal)
                    }//: VStack
                }//: SCROLL
            }//: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//:Stack
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
}
