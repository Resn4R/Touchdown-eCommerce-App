//
//  ProductTitleView.swift
//  Touchdown
//
//  Created by Vito Borghi on 15/02/2024.
//

import SwiftUI

struct ProductTitleView: View {
    @State var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }//: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }
}

#Preview {
    ProductTitleView(title: "Helmets")
}
