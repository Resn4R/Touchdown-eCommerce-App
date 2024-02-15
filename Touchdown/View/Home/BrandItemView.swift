//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Vito Borghi on 15/02/2024.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    @State var brand: Brand
    // MARK: - BODY
    var body: some View {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding(3)
                .background( Color.white.clipShape(RoundedRectangle(cornerRadius: 12)) )
                .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
                )
    }
}

#Preview {
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
