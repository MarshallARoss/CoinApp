//
//  CoinLogoView.swift
//  CryptoApp
//
//  Created by Marshall  on 7/27/22.
//

import SwiftUI

struct CoinLogoView: View {
    
    var coin: Coin
    
    var body: some View {
        VStack {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(coin.name)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

struct CoinLogoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinLogoView(coin: dev.coin)
            CoinLogoView(coin: dev.coin)
                .preferredColorScheme(.dark)
        }
        .previewLayout(.sizeThatFits)
    }
}
