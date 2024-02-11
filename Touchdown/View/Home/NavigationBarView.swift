//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Vito Borghi on 11/02/2024.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    @State private var isAnimated = false 
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
           
           Spacer()
           
           Button{
               //action
           } label: {
               ZStack {
                   Image(systemName: "cart")
                       .font(.title)
                       .foregroundStyle(.black)
                   
                   Circle()
                       .fill(.red)
                       .frame(width: 14, height: 14, alignment: .center)
                       .offset(x: 13, y: -10)
               }
           }//: BUTTON
        }//: HSTACK
    }
}

#Preview {
    NavigationBarView()
}
