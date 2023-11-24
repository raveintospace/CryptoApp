//
//  MarketDataService.swift
//  CryptoApp
//
//  Created by Uri on 18/11/23.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    
    // exclusive cancellable for getMarketData
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getMarketData()
    }
    
    func getMarketData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkManager.fetch(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: {
                [weak self] (returnedGlobalData) in
                guard let self = self else { return }
                self.marketData = returnedGlobalData.data
                self.marketDataSubscription?.cancel() // -> cancel because it won't call api continously
            })
    }
}
