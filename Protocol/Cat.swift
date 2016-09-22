//
//  Cat.swift
//  Protocol
//
//  Created by Tom Marks on 18/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import Foundation

class Cat: Pet {
    // Overriding Pet's CustomStringConvertible protocol implementation so we can use our own description.
    override var description: String {
        return "This is a cat! \(id)"
    }
}
