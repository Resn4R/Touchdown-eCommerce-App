//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Vito Borghi on 17/02/2024.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    @Binding var selectedSize: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // RATINGS
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            //add rating
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
            
            
            Spacer()
            
            //SIZE
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            //choose size
                            selectedSize = size
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background{
                                    ZStack {
                                        Color.white.clipShape( RoundedRectangle(cornerRadius: 5) )
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(colorGray, lineWidth: 2)
                                    }
                                }
                        }
                    }
                }
            }//: VStack
        }//: HSTACK
    }
}

#Preview {
    BindedRatingsView()
        .previewLayout(.sizeThatFits)
        .padding()
}


struct BindedRatingsView: View {
    @State private var binding: String = "M"
    var body: some View {
        RatingsSizesDetailView(selectedSize: $binding)
    }
}
