//
//  Luxury.swift
//  Protocol
//
//  Created by Tom Marks on 20/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import UIKit

// Luxury Protocol
protocol Luxury {
    var autoPilotEnabled: Bool { get }
    var leatherColor: UIColor { get set }
    var zeroToSixty: TimeInterval { get }
}


// Luxury Extension
extension Luxury where Self: Car {
    func heatWindshieldWipers() {
        // start heating windshield wipers
    }
}
