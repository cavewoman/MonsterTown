//
//  Zombie.swift
//  MonsterTown
//
//  Created by Anna Chan on 6/17/17.
//  Copyright © 2017 Anna Chan. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        if let town = town, town.population > 0 {
            self.town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
    }
}
