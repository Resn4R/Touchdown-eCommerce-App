//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Vito Borghi on 15/02/2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }//: FOREACH
            }//: GRID
            .frame(height: 200)
            .padding(15)
        }//: SCROLL
    }
}

#Preview {
    BrandGridView()
}
