//
//  Game.swift
//  SSL
//
//  Created by Oliver Reiger on 30.04.16.
//  Copyright © 2016 Oliver Reiger. All rights reserved.
//

import Foundation
import CoreData


class Game: NSManagedObject {

    var playersTeam1Array : [Player] {
        get {
            return playersTeam1?.allObjects as! [Player]
        }
        set(allPlayersTeam1) {
            playersTeam1 = NSSet(array: allPlayersTeam1)
        }
    }
    
    var playersTeam2Array : [Player] {
        get {
            return playersTeam2?.allObjects as! [Player]
        }
        set(allPlayersTeam2) {
            playersTeam2 = NSSet(array: allPlayersTeam2)
        }
    }

}
