//
//  CoinImageService.swift
//  CryptoApp
//
//  Created by Uri on 13/11/23.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    // exclusive cancellable for getCoinImage
    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkManager.fetch(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: {
                [weak self] (returnedImage) in
                guard let self = self else { return }
                self.image = returnedImage
                self.imageSubscription?.cancel() // -> cancel because it won't call api continously
            })
        
    }
}
