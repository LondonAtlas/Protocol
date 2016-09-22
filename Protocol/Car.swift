//
//  Car.swift
//  Protocol
//
//  Created by Tom Marks on 18/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import Foundation

class Car: NSObject, UniqueId {
    let id: NSUUID

    init(id: NSUUID) {
        self.id = id
        super.init()
    }
}
