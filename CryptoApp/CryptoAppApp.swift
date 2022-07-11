//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Marshall  on 6/17/22.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    @StateObject private var homeViewModel: HomeViewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(homeViewModel)
        }
    }
}
