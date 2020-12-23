//
//  Walk+CoreDataProperties.swift
//  DogWalk
//
//  Created by Nazmul's Mac Mini on 23/12/20.
//  Copyright © 2020 Razeware. All rights reserved.
//
//

import Foundation
import CoreData


extension Walk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Walk> {
        return NSFetchRequest<Walk>(entityName: "Walk")
    }

    @NSManaged public var date: Date?
    @NSManaged public var dog: Dog?

}

extension Walk : Identifiable {

}
