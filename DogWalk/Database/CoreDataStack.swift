//
//  CoreData.swift
//  DogWalk
//
//  Created by Nazmul's Mac Mini on 23/12/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    private let modelName: String

    private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: modelName)
        container.loadPersistentStores(completionHandler: {
            (storeDescription, error) in

            if let error = error as NSError? {
                print("Unresolved error: \(error), userInfo: \(error.userInfo)")
            }
        })
        return container
    }()

    lazy var managedContext: NSManagedObjectContext = {
        return storeContainer.viewContext
    }()

    init(modelName: String) {
        self.modelName = modelName
    }

    func saveContext() {
        guard managedContext.hasChanges
        else {
            return
        }

        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Unresolved error: \(error), userInfo: \(error.userInfo)")
        }
    }
}
