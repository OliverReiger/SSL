//
//  addGame.swift
//  SSL
//
//  Created by Oliver Reiger & Andreas Seitz on 30.04.16.
//  Copyright © 2016 Oliver Reiger & Andreas Seitz. All rights reserved.
//

import UIKit

class AddGameViewController: UIViewController {
    
    var players = [Player]()

    override func viewDidLoad() {
    }
    
    func saveGame(scoreTeam1: NSNumber, scoreTeam2: NSNumber, playersTeam1: [Player], playersTeam2: [Player]) {
        (UIApplication.sharedApplication().delegate as! AppDelegate).dataManager?.saveGame(scoreTeam1, scoreTeam2: scoreTeam2, playersTeam1: playersTeam1, playersTeam2: playersTeam2)
    }
    
    func getPlayers() {
        players = ((UIApplication.sharedApplication().delegate as! AppDelegate).dataManager?.getPlayers())!
    }
    
}
