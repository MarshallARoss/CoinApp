//
//  DetailViewModel.swift
//  CryptoApp
//
//  Created by Marshall  on 8/1/22.
//

import SwiftUI
import Combine

class DetailViewModel: ObservableObject {
        
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: Coin){
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("Coin Data Recieved")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
    
    
    
}


