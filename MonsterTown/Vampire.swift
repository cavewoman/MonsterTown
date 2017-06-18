//
//  Vampire.swift
//  MonsterTown
//
//  Created by Anna Chan on 6/17/17.
//  Copyright © 2017 Anna Chan. All rights reserved.
//

import Foundation

class Vampire: Monster {
    var thrall: [Vampire] = []
    override func terrorizeTown() {
        thrall.append(Vampire())
        if let town = town, town.population > 0 {
            self.town?.changePopulation(by: -1)
        }
        super.terrorizeTown()
    }
}
