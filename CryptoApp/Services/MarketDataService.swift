//
//  MarketDataService.swift
//  CryptoApp
//
//  Created by Marshall on 7/11/22.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketData? = nil
    
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    public func getData() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleCompletion,
                  receiveValue: { [weak self] (returnedGlobalData) in
                //Data inside global data is market data
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
