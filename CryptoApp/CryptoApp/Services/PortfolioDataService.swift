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
        }
    }
    
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            debugPrint("Error fetching Portfolio Entities: \(error)")
        }
    }
}
