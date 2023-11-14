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
                
        // subscription to searchText & dataService, when any of them updates, sinks the updates
        $searchText
            .combineLatest(dataService.$allCoins)
            .map { (text, startingCoins) -> [CoinModel] in
                
                guard !text.isEmpty else {
                    return startingCoins
                }
                
                let lowercasedText = text.lowercased()
                
                return startingCoins.filter { (coin) -> Bool in
                    return coin.name.lowercased().contains(lowercasedText) ||
                    coin.symbol.lowercased().contains(lowercasedText) ||
                    coin.id.lowercased().contains(lowercasedText)
                }
            }
            .sink { [weak self] (returnedCoins) in
                guard let self = self else { return }
                self.allCoins = returnedCoins
            }
            .store(in: &cancellables)
        
        // subscription to allCoins array of CoinDataService - not necessary when using our searchBar
//        dataService.$allCoins
//            .sink { [weak self] (returnedCoins) in
//                guard let self = self else { return }
//                self.allCoins = returnedCoins
//            }
//            .store(in: &cancellables)
    }
}
