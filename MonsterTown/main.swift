//
//  main.swift
//  MonsterTown
//
//  Created by Anna Chan on 6/17/17.
//  Copyright © 2017 Anna Chan. All rights reserved.
//

import Foundation

var myTown = Town(population: 0, stoplights: 6)
myTown?.printDescription()
let myTownSize = myTown?.townSize
print(myTownSize ?? "")
myTown?.changePopulation(by: 1_000_000)
print("Size: \(myTown?.townSize); population: \(myTown?.population)")
var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie = nil

var damonTheVamp = Vampire(town: myTown, monsterName: "Damon")
damonTheVamp.terrorizeTown()
print("Vamp trall is \(damonTheVamp.thrall)")
damonTheVamp.town?.printDescription()

var convenienceZombie = Zombie(limp: true, fallingApart: false)
