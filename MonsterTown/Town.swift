//
//  Town.swift
//  MonsterTown
//
//  Created by Anna Chan on 6/17/17.
//  Copyright © 2017 Anna Chan. All rights reserved.
//

import Foundation

struct Town {
    let region = "South"
    var population = 5_422
    var numberOfStoplights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
    lazy var townSize: Size = {
        switch self.population {
        case 0...10_000:
            return Size.small
        case 10_001...100_000:
            return Size.medium
        default:
            return Size.large
        }
    }()
    
    func printDescription() {
        print("Population: \(population), number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        if population + amount > 0 {
            population += amount
        } else {
            population = 0
        }
    }
}
