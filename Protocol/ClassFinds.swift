//
//  ClassFinds.swift
//  Protocol
//
//  Created by Tom Marks on 18/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import Foundation


//**********************************************************************************************************************
// MARK: - Child Classes

// Recreating a function that does the exact same thing for multiple class is always going to lead to a bad time.
// It introduces a lot of code duplication which in the future would make debugging, and editing functionality
// very difficult.

extension Cat {
    static func find(cats:[Cat], with id: NSUUID) -> [Cat] {
        var foundCats = [Cat]()
        
        for aCat in cats {
            if aCat.id == id {
                foundCats.append(aCat)
            }
        }
        
        return foundCats
    }
}

extension Dodge {
    static func find(dodges:[Dodge], with id: NSUUID) -> [Dodge] {
        var foundDodges = [Dodge]()
        
        for aDodge in dodges {
            if aDodge.id == id {
                foundDodges.append(aDodge)
            }
        }
        
        return foundDodges
    }
}

extension Dog {
    static func find(dogs:[Dog], with id: NSUUID) -> [Dog] {
        var foundDogs = [Dog]()
        
        for aDog in dogs {
            if aDog.id == id {
                foundDogs.append(aDog)
            }
        }
        
        return foundDogs
    }
}

extension Tesla {
    static func find(teslas:[Tesla], with id: NSUUID) -> [Tesla] {
        var foundTesla = [Tesla]()
        
        for aTesla in teslas {
            if aTesla.id == id {
                foundTesla.append(aTesla)
            }
        }
        
        return foundTesla
    }
}

//**********************************************************************************************************************
// MARK: - Parent Classes

// Creating a single function for each parent class of different types is ok, however this can lead to problems
// once your code complexity grows.
extension Car {
    static func find(cars:[Car], with id: NSUUID) -> [Car] {
        var foundCars = [Car]()
        
        for aCar in cars {
            if aCar.id == id {
                foundCars.append(aCar)
            }
        }
        
        return foundCars
    }
}

extension Pet {
    static func find(pets:[Pet], with id: NSUUID) -> [Pet] {
        var foundPets = [Pet]()
        
        for aPet in pets {
            if aPet.id == id {
                foundPets.append(aPet)
            }
        }
        
        return foundPets
    }
}
