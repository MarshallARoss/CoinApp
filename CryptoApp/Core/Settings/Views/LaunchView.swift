//
//  LaunchView.swift
//  CryptoApp
//
//  Created by Marshall  on 8/5/22.
//

import SwiftUI

struct LaunchView: View {
    
    @State var loadingText: [String] = "Loading Stonks...".map({String($0)})
    @State var showingText: Bool = false
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    @State private var counter: Int = 0
    @State private var loops: Int = 0
  
    @Binding var showLaunchView: Bool
    
    var body: some View {
        ZStack{
            Color.launch.background
                .ignoresSafeArea()
            
            Image("logo-transparent")
                .resizable()
                .frame(width: 100, height: 100)
            
            ZStack {
                if showingText {
                    HStack(spacing: 1.0){
                        ForEach(loadingText.indices) { index in
                            Text(loadingText[index])
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.launch.accent)
                                .offset(y: counter == index ? -5 : 0)
                        }
                    }
                    .transition(.scale)
                   }
            }
            .offset(y: 70)
        }
        .onAppear {
            showingText.toggle()
        }
        .onReceive(timer) { _ in
            withAnimation(.spring()) {
                let lastIndex = loadingText.count - 1
                
                if counter == lastIndex + 12 {
                    counter = 0
                    loops += 1
                    if loops >= 2 {
                        showLaunchView = false
                        
                    }
                } else {
                    counter += 1
                }
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunchView: .constant(true))
    }
}
