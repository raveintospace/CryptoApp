//
//  CoinDataService.swift
//  CryptoApp
//
//  Created by Uri on 11/11/23.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    
    // exclusive cancellable for getCoins
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else { return }
        
        coinSubscription = NetworkManager.fetch(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: {
                [weak self] (returnedCoins) in
                guard let self = self else { return }
                self.allCoins = returnedCoins
                self.coinSubscription?.cancel() // -> cancel because it won't call api continously
            })
    }
}
