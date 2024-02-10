//
//  FooterView.swift
//  Touchdown
//
//  Created by Vito Borghi on 10/02/2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Vito Borghi/nAll rights reserved")
                .font(.system(.footnote, design: .default, weight: .bold))
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }//: VSTACK
        .padding()
    }
}

#Preview {
    FooterView()
        .background(colorBackground)
}
