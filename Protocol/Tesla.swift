//
//  Tesla.swift
//  Protocol
//
//  Created by Tom Marks on 18/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import UIKit

// Tesla Inherits from car and conforms to Luxury.
class Tesla: Car, Luxury {
    // Class protopery
    let isGreatestCarEverOfAllTime: Bool = true
    
    var isSnowing = false {
        didSet {
            if isSnowing {
                // We can call the luxury function that will do all the work to heat the windshield wipers.
                self.heatWindshieldWipers()
            }
        }
    }

    // Luxury Protocol
    var autoPilotEnabled: Bool = true
    var leatherColor: UIColor = UIColor.white
    var zeroToSixty: TimeInterval {
        return 2.5
    }
}
