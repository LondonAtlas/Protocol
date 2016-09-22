//
//  Find.swift
//  Protocol
//
//  Created by Tom Marks on 18/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import Foundation

// Generic Find
func find<T: UniqueId>(objects: [T], with id: NSUUID) -> [T] {
    var foundObjects = [T]()
    
    for anObject in objects {
        if anObject.id == id {
            foundObjects.append(anObject)
        }
    }
    
    return foundObjects
}
