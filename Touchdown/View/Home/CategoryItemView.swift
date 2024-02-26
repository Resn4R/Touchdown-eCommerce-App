//
//  CategroyItemView.swift
//  Touchdown
//
//  Created by Vito Borghi on 13/02/2024.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - property
    
    let category: Category
    
    // MARK: - body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Image(category.image)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundStyle(.gray)
            
            Text(category.name.uppercased())
                .fontWeight(.light)
                .foregroundStyle(.gray)
            
            Spacer()
        }//: HSTACK
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .stroke(.gray, lineWidth: 1)
        }
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .padding()
        .background(colorBackground)
}
