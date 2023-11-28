//
//  ChartView.swift
//  CryptoApp
//
//  Created by Uri on 28/11/23.
//

import SwiftUI

struct ChartView: View {
    
    let data: [Double]
    let maxY: Double
    let minY: Double
    
    init(coin: CoinModel) {
        self.data = coin.sparklineIn7D?.price ?? []
        self.maxY = data.max() ?? 0
        self.minY = data.min() ?? 0
    }
    
    /* logic for xPosition
     300 width
     100 indices
     300 / 100 = 3
     index[0] + 1 = 1 * 3 = 3
     index[1] + 1 = 2 * 3 = 6
     index[2] + 1 = 3 * 3 = 9
     index[99] + 1 = 100 * 3 = 300
    */
    
    /* logic for yAxis & yPosition
     60000 maxY
     50000 minY
     60000 - 50000 = 10000 -> yAxis
     52000 - data point -> (data[index])
     52000 - 50000 = 2000 / 10000 = 20% -> yPosition
     
     */
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                for index in data.indices {
                    
                    let xPosition = geometry.size.width / CGFloat(data.count) * CGFloat(index + 1)
                    
                    let yAxis = maxY - minY
                    
                    let yPosition = CGFloat((data[index] - minY) / yAxis) * geometry.size.height
                    
                    if index == 0 {
                        path.move(to: CGPoint(x: 0, y: 0))  // starts at top left
                    }
                    path.addLine(to: CGPoint(x: xPosition, y: yPosition))
                }
            }
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}
