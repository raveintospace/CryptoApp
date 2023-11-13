//
//  CoinImageViewModel.swift
//  CryptoApp
//
//  Created by Uri on 13/11/23.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.isLoading = true
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        
        dataService.$image
            .sink { [weak self] (_) in
                guard let self = self else { return }
                self.isLoading = false
            } receiveValue: { [weak self] (returndImage) in
                guard let self = self else { return }
                self.image = returndImage
            }
            .store(in: &cancellables)
    }
}
