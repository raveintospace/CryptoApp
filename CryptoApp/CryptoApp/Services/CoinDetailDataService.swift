//
//  CoinDetailDataService.swift
//  CryptoApp
//
//  Created by Uri on 26/11/23.
//

import Foundation
import Combine

class CoinDetailDataService {
    
    @Published var coinDetails: CoinDetailModel? = nil
    
    // exclusive cancellable for getCoinDetails
    var coinDetailSubscription: AnyCancellable?
    
    // we pass a coin from home module
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinDetails()
    }
    
    func getCoinDetails() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false") else { return }
        
        coinDetailSubscription = NetworkManager.fetch(url: url)
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: {
                [weak self] (returnedCoinDetails) in
                guard let self = self else { return }
                self.coinDetails = returnedCoinDetails
                self.coinDetailSubscription?.cancel() // -> cancel because it won't call api continously
            })
    }
}
