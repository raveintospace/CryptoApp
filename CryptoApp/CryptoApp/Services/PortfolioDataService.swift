//
//  PortfolioDataService.swift
//  CryptoApp
//  Lesson 15 - https://youtu.be/7cqag8Acr2s?si=v03wd99rnGpBaOWj
//  Created by Uri on 20/11/23.
//  Logic to get data of our portfolio from Core Data

import Foundation
import CoreData

class PortfolioDataService {
    
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    private let entityName: String = "PortfolioEntity"
    
    @Published var savedEntities: [PortfolioEntity] = []
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { (_, error) in
            if let error = error {
                debugPrint("Error loading Core Data: \(error)")
            }
            self.getPortfolio()
        }
    }
    
    // MARK: - Public method, called from somewhere else in the app
    func updatePortfolio(coin: CoinModel, amount: Double) {
        
        // check if coin is already in portfolio
        if let entity = savedEntities.first(where: { $0.coinID == coin.id }) {
            
            if amount > 0 {
                update(entity: entity, amount: amount)
            } else {
                delete(entity: entity)
            }
        } else {    // coin is not in portfolio, it's a new one to add
            add(coin: coin, amount: amount)
        }
    }
    
    // MARK: - Private methods, only called inside the class
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            debugPrint("Error fetching Portfolio Entities: \(error)")
        }
    }
    
    private func add(coin: CoinModel, amount: Double) {
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        applyChanges()
    }
    
    private func update(entity: PortfolioEntity, amount: Double) {
        entity.amount = amount
        applyChanges()
    }
    
    private func delete(entity: PortfolioEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error {
            debugPrint("Error saving to Core Data: \(error)")
        }
    }
    
    // save current coins to portfolio and get the info from it after being updated
    private func applyChanges() {
        save()
        getPortfolio()
    }
}
