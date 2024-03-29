//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Vito Borghi on 11/02/2024.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIEs
    @State private var isAnimated = false
    
    var isCartEmpty: Bool
    
    // MARK: - BODY
    var body: some View {
       HStack {
           Button{
               //action
           } label: {
               Image(systemName: "magnifyingglass")
                   .font(.title)
                   .foregroundStyle(.black)
           }//: Button
           
           Spacer()
           
           LogoView()
               .opacity(isAnimated ? 1 : 0)
               .offset(x: 0, y: isAnimated ? 0 : -25)
               .onAppear {
                   withAnimation(.easeOut(duration: 0.5)) {
                       isAnimated.toggle()
                   }
               }
           
           Spacer()
           
           Button{
               //action
           } label: {
               ZStack {
                   Image(systemName: "cart")
                       .font(.title)
                       .foregroundStyle(.black)
                   
                   Circle()
                       .tint(.red)
                       .frame(width: 15)
                       .offset(x: 10, y: -10)
                       .opacity(isCartEmpty ? 0 : 1)

               }
           }//: BUTTON
        }//: HSTACK
    }
}

#Preview {
    NavigationBarView(isCartEmpty: true)
}
