//
//  Find.swift
//  Protocol
//
//  Created by Tom Marks on 18/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import Foundation

// Using generic functions will reduce your code complexity significantly. It is easier to maintain long term
// and changes can be applied to all types, structs, and classes that conform to a given protocol.
// See UniqueId.swift for more information about the Unique protcol.
func find<T: UniqueId>(objects: [T], with id: NSUUID) -> [T] {
    var foundObjects = [T]()
    
    for anObject in objects {
        if anObject.id == id {
            foundObjects.append(anObject)
        }
    }
    
    return foundObjects
}
