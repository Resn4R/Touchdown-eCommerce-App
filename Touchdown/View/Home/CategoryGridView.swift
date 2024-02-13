//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Vito Borghi on 13/02/2024.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section {
                    ForEach(categories) { category in
                    CategoryItemView(category: category)
                    }
                } header: {
                    Text("Header")
                } footer: {
                    Text("Footer ")
                }
            })//: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: SCROLL
    }
}

#Preview {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
