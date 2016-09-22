//
//  Luxury.swift
//  Protocol
//
//  Created by Tom Marks on 20/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import UIKit

// In order to reduce the depths of class heirachies using protocols will help keep your code more organised.
protocol Luxury {
    var autoPilotEnabled: Bool { get }
    var leatherColor: UIColor { get set }
    var zeroToSixty: TimeInterval { get }
}


// By extending the Luxury protocol, we can add a function for all Cars that conform to the luxury protocol
// which in turn will mean far less code duplication. The function heatWindshieldWipers will only be
// added to Car classes and subclasses that conform to the Luxury protocol.
extension Luxury where Self: Car {
    func heatWindshieldWipers() {
        // start heating windshield wipers
    }
}
