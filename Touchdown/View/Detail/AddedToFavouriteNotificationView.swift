//
//  AddedToFavouriteNotificationView.swift
//  Touchdown
//
//  Created by Vito Borghi on 18/02/2024.
//

import SwiftUI

struct AddedToFavouriteNotificationView: View {
    var body: some View {
        Text("Item added to Favourites!")
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            .padding()
            .background{
                ZStack {
                    Color.white.clipShape( RoundedRectangle(cornerRadius: 12) )
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(colorGray, lineWidth: 2)
                }
            }
    }
}

#Preview {
    AddedToFavouriteNotificationView()
        .padding()
        .background(colorBackground)
}
