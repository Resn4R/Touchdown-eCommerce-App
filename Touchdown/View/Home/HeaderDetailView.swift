//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Vito Borghi on 17/02/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    @State var product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HeaderDetailView(product: products[0])
}
