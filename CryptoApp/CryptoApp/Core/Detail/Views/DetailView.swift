//
//  DetailView.swift
//  CryptoApp
//
//  Created by Uri on 25/11/23.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var coin: CoinModel?
    
    init(coin: Binding<CoinModel?>) {
        self._coin = coin
    }
    
    var body: some View {
        Text(coin?.name ?? "")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: .constant(dev.coin))
    }
}
