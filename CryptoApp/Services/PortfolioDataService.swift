//
//  PortfolioDataService.swift
//  CryptoApp
//
//  Created by Marshall  on 7/28/22.
//

import Foundation
import CoreData

class PortfolioDataService {
    
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    private let entityName: String = "PortfolioEntity"
    
    @Published var savedEntitys: [PortfolioEntity] = []
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Error loading core data: \(error)")
            }
            self.getPortfolio()
        }
    }
    
    //MARK: PUBLIC
    
    public func updatePortfolio(coin: Coin, amount: Double) {
        
        //check if coin is in portfolio
        if let entity = savedEntitys.first(where: {$0.coinID == coin.id}) {
            if amount > 0 {
                update(entity: entity, amount: amount)
            } else {
                remove(entity: entity)
            }
        } else {
            add(coin: coin, amount: amount)
        }
    }
    
    //MARK: PRIVATE
    
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        
        do {
            savedEntitys = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching portfolio entity: \(error)")
        }
    }
    
    private func add(coin: Coin, amount: Double) {
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        applyChanges()
    }
    
    private func update(entity: PortfolioEntity, amount: Double) {
        entity.amount = amount
        applyChanges()
    }
    
    private func remove(entity: PortfolioEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving to Core Data: \(error)")
        }
    }
    
    private func applyChanges() {
        save()
        getPortfolio()
    }
    
    
    
    
    
}
