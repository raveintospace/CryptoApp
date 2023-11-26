//
//  DetailViewModel.swift
//  CryptoApp
//
//  Created by Uri on 26/11/23.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetails) in
                debugPrint(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
}
