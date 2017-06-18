//
//  Zombie.swift
//  MonsterTown
//
//  Created by Anna Chan on 6/17/17.
//  Copyright © 2017 Anna Chan. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }
    
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    final override func terrorizeTown() {
        if !isFallingApart {
            if let town = town, town.population > 0 {
                self.town?.changePopulation(by: -10)
            }
        }
        super.terrorizeTown()
    }
}
