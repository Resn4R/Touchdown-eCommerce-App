//
//  ImageHeaderTabView.swift
//  Touchdown
//
//  Created by Vito Borghi on 12/02/2024.
//

import SwiftUI

struct ImageHeaderTabView: View {
    
    var body: some View {
        TabView {
            ForEach(players) { player in
                Image(player.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    ImageHeaderTabView()
        .background(.black)
}
