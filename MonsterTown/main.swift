//
//  main.swift
//  MonsterTown
//
//  Created by Anna Chan on 6/17/17.
//  Copyright © 2017 Anna Chan. All rights reserved.
//

import Foundation

var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")
let fredTheZombie = Zombie()
fredTheZombie.name = "Fred"
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

var damonTheVamp = Vampire()
damonTheVamp.town = myTown
damonTheVamp.terrorizeTown()
print("Vamp trall is \(damonTheVamp.thrall)")
damonTheVamp.town?.printDescription()
