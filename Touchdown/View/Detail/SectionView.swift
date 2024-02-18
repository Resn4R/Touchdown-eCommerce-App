//
//  SectionView.swift
//  Touchdown
//
//  Created by Vito Borghi on 13/02/2024.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockwise: Bool
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories")
                .font(.footnote)
                .bold()
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }//: VSTACK
        .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 12)))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: true)
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
