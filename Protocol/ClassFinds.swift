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

// Child Finds
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

// Parent Finds
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
