//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Vito Borghi on 13/02/2024.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    @Binding var selectedCategory: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section {
                    ForEach(categories) { category in
                        Button {
                            selectedCategory = category.name
                        } label: {
                            CategoryItemView(category: category)
                        }
                    }
                } header: {
                    SectionView(rotateClockwise: false)
                } footer: {
                    SectionView(rotateClockwise: true)
                }
            })//: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: SCROLL
    }
}

#Preview {
    StatefulPreview()
        .padding()
        .background(colorBackground)
}

struct StatefulPreview: View {
    @State private var previewValue = categories[0].name

    var body: some View {
        CategoryGridView(selectedCategory: $previewValue)
    }
}


