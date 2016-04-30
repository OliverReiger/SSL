//
//  Game+CoreDataProperties.swift
//  SSL
//
//  Created by Oliver Reiger on 30.04.16.
//  Copyright © 2016 Oliver Reiger. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Game {

    @NSManaged var date: NSDate?
    @NSManaged var scoreTeam1: NSNumber?
    @NSManaged var scoreTeam2: NSNumber?
    @NSManaged var playersTeam1: NSSet?
    @NSManaged var playersTeam2: NSSet?

}
