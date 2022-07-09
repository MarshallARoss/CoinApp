//
//  ContentView.swift
//  CryptoApp
//
//  Created by Marshall  on 6/17/22.
//

import SwiftUI

struct ColorDemoView: View {
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            
            VStack {
                Text("Accent")
                    .foregroundColor(.theme.accent)
                Text("secondary")
                    .foregroundColor(.theme.secondaryText)
                Text("red")
                    .foregroundColor(.theme.red)
                Text("Green")
                    .foregroundColor(.theme.green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDemoView()
        ColorDemoView()
            .preferredColorScheme(.dark)
    }
}
