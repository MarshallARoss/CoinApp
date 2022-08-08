//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Marshall  on 8/4/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let defaultURL = URL(string: "https://google.com")!
    let githubURL = URL(string: "https://github.com/MarshallARoss")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/SwiftfulThinking")!
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.background.ignoresSafeArea()
                
                List {
                    devSection
                    nickSection
                    coinSection
                    appSection
                }
                .font(.headline)
                .tint(.blue)
                .listStyle(.grouped)
                .navigationTitle("Settings")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading, content: {
                            XMarkButton
                        })
                }
            }
            }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


extension SettingsView {
    private var XMarkButton: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
    
    
    private var nickSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was inspired by Nick from Swiftful Thinking! Thanks Nick!  @SwiftfulThinking.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe Here", destination: youtubeURL)
        } header: {
            Text("Originator")
        }

    }
    
    private var coinSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The Cryptodata in this app come from the free API at Coingecko. Prices will be delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Explore Here", destination: coinGeckoURL)
        } header: {
            Text("API")
        }
        
    }
    
    private var devSection: some View {
        Section {
            VStack(alignment: .leading) {
                Text("Check out Marshall's other projects here!")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Github", destination: githubURL)
        } header: {
            Text("Developer")
        }
        
    }
    
    private var appSection: some View {
        Section {
          Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            
            
            
        } header: {
            Text("App")
        }
        
    }
}
