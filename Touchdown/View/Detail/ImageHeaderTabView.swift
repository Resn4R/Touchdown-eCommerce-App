//
//  ImageHeaderTabView.swift
//  Touchdown
//
//  Created by Vito Borghi on 12/02/2024.
//

import SwiftUI

struct ImageHeaderTabView: View {
    
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    @State private var currentIndex = 0
    
    var body: some View {
        TabView {
            Image(players[currentIndex].image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.top, 10)
                .padding(.horizontal, 15)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .onReceive(timer) { _ in
            withAnimation(.easeIn(duration: 0.75)) {
                currentIndex = (currentIndex + 1) % players.count
                
                
            }
        }
    }
}

#Preview {
    ImageHeaderTabView()
        .frame(height: 250)
}
