//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Vito Borghi on 10/02/2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ShoppingCart())
        }
    }
}
