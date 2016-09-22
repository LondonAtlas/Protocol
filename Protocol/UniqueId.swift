//
//  UniqueId.swift
//  Protocol
//
//  Created by Tom Marks on 18/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import UIKit

// A simple protocol that when classes conform will make it easier to work with them in a generic fashion.
// See Find.swift for an example.
protocol UniqueId {
    var id: NSUUID { get }
}
