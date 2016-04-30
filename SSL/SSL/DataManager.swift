//
//  DataManager.swift
//  SSL
//
//  Created by Andreas Seitz on 30/04/16.
//  Copyright © 2016 Oliver Reiger. All rights reserved.
//

import UIKit
import CoreData

class DataManager {

    
    let appDelegate: AppDelegate
    let managedContext: NSManagedObjectContext
    
    init() {
        self.appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        self.managedContext = appDelegate.managedObjectContext
        
        //Generate Dummy Data
        DummyDataGenerator.generateDummyData(self)
    }
    
    func savePlayer(name: String) -> Player {
        let player = createEmptyPlayer()
        player.name = name
        saveManagedObjectContext()
        return player;
    }
    
    func createEmptyPlayer() -> Player {
        let entity = NSEntityDescription.entityForName("Player", inManagedObjectContext: self.managedContext)
        return Player(entity: entity!, insertIntoManagedObjectContext: self.managedContext)
    }
    
    func getPlayers() -> [Player] {
        let fetchRequest = NSFetchRequest(entityName: "Player")
        
        do {
            let results =
                try self.managedContext.executeFetchRequest(fetchRequest)
            return (results as! [Player])
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)")
            return [Player]()
        }
    }
    
    
    func saveGame(scoreTeam1: NSNumber, scoreTeam2: NSNumber, playersTeam1: [Player], playersTeam2: [Player]) {
        let game = createEmptyGame()
        game.date = NSDate()
        game.scoreTeam1 = scoreTeam1
        game.scoreTeam2 = scoreTeam2
        game.playersTeam1 = NSSet(array: playersTeam1)
        game.playersTeam2 = NSSet(array: playersTeam2)
        saveManagedObjectContext()
    }
    
    func createEmptyGame() -> Game {
        let entity = NSEntityDescription.entityForName("Game", inManagedObjectContext: self.managedContext)
        return Game(entity: entity!, insertIntoManagedObjectContext: self.managedContext)
    }
    
    
    func getGames() -> [Game]! {
        let fetchRequest = NSFetchRequest(entityName: "Game")
        
        do {
            let results =
                try self.managedContext.executeFetchRequest(fetchRequest)
            return (results as! [Game])
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)")
            return [Game]()
        }
    }
    
    
    //MARK: General Functions
    
    func saveManagedObjectContext() {
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
}
