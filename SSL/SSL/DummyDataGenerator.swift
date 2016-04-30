//
//  DummyDataGenerator.swift
//  SSL
//
//  Created by Andreas Seitz on 30/04/16.
//  Copyright © 2016 Oliver Reiger & Andreas Seitz. All rights reserved.
//

import UIKit


class DummyDataGenerator {
    
    
    struct Static {
        static var onceToken: dispatch_once_t = 0
        static var instance: DummyDataGenerator? = nil
    }
    
    class func generateDummyData(dataManager: DataManager) {
        let sandy = dataManager.savePlayer("Sandy")
        let oli = dataManager.savePlayer("BigO")
        let beda = dataManager.savePlayer("Beda")
        let hannes = dataManager.savePlayer("Hannes")
        let dompfl = dataManager.savePlayer("Dompfl")
        let jp1 = dataManager.savePlayer("JP1")
        
        
        let players1Team = [sandy, oli, beda]
        let players2Team = [hannes, dompfl, jp1]
        
        dataManager.saveGame(11, scoreTeam2: 13, playersTeam1: players1Team, playersTeam2: players2Team)
        dataManager.saveGame(11, scoreTeam2: 0, playersTeam1: players1Team, playersTeam2: players2Team)
        dataManager.saveGame(8, scoreTeam2: 11, playersTeam1: players1Team, playersTeam2: players2Team)
        dataManager.saveGame(7, scoreTeam2: 11, playersTeam1: players2Team, playersTeam2: players2Team)
        
    }
}