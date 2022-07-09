//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Marshall  on 6/17/22.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
