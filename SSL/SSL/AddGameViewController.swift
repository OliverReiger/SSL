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
        
        stepper1.wraps = true
        stepper1.autorepeat = true
        stepper2.wraps = true
        stepper2.autorepeat = true
        
    }
    
    func saveGame(scoreTeam1: NSNumber, scoreTeam2: NSNumber, playersTeam1: [Player], playersTeam2: [Player]) {
        (UIApplication.sharedApplication().delegate as! AppDelegate).dataManager?.saveGame(scoreTeam1, scoreTeam2: scoreTeam2, playersTeam1: playersTeam1, playersTeam2: playersTeam2)
    }
    
    func getPlayers() {
        players = ((UIApplication.sharedApplication().delegate as! AppDelegate).dataManager?.getPlayers())!
    }
    
    @IBOutlet weak var valueLabel1: UITextView!
    @IBOutlet weak var stepper1: UIStepper!
    @IBAction func stepper1ValueChanged(sender: AnyObject) {
        valueLabel1.text = sender.value.description
    }
    @IBOutlet weak var valueLabel2: UITextView!

    @IBOutlet weak var stepper2: UIStepper!
    @IBAction func stepper2ValueChanged(sender: UIStepper) {
        valueLabel2.text = sender.value.description
    }
}
