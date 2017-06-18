//
//  Monster.swift
//  MonsterTown
//
//  Created by Anna Chan on 6/17/17.
//  Copyright © 2017 Anna Chan. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name: String
    static let isTerrifying = true
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    
    class var spookyNoise: String {
        return "Grrr..."
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
