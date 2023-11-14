//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Uri on 11/11/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()    // we won't cancel this subscription
    
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        
        // subscription to allCoins array of CoinDataService
        dataService.$allCoins
            .sink { [weak self] (returnedCoins) in
                guard let self = self else { return }
                self.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
