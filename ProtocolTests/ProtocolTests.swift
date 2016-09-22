//
//  ProtocolTests.swift
//  ProtocolTests
//
//  Created by Tom Marks on 18/09/2016.
//  Copyright © 2016 Tom Marks. All rights reserved.
//

import XCTest
@testable import Protocol

// How many items in an array
let ObjectCount: UInt32 = 100000

class ProtocolTests: XCTestCase {
    
    //******************************************************************************************************************
    // MARK: - Properties
    
    // Pets
    var cats = [Cat]()
    var dogs = [Dog]()
    
    // Cars
    var dodges = [Dodge]()
    var teslas = [Tesla]()
    
    // Random indexes
    let catIndex = Int(arc4random_uniform(ObjectCount))
    let dogIndex = Int(arc4random_uniform(ObjectCount))
    let dodgeIndex = Int(arc4random_uniform(ObjectCount))
    let teslaIndex = Int(arc4random_uniform(ObjectCount))
    
    //******************************************************************************************************************
    // MARK: - Class Overrides
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // Create cats
        for _ in 0...ObjectCount {
            let uuid = NSUUID()
            self.cats.append(Cat(id: uuid))
        }
        
        // Create dogs
        for _ in 0...ObjectCount {
            let uuid = NSUUID()
            self.dogs.append(Dog(id: uuid))
        }
        
        // Create dodges
        for _ in 0...ObjectCount {
            let uuid = NSUUID()
            self.dodges.append(Dodge(id: uuid))
        }
        
        // Create teslas
        for _ in 0...ObjectCount {
            let uuid = NSUUID()
            self.teslas.append(Tesla(id: uuid))
        }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        self.cats.removeAll()
        self.dogs.removeAll()
        self.dodges.removeAll()
        self.teslas.removeAll()
    }
    
    //******************************************************************************************************************
    // MARK: - Tests
    
    // 1. test child class finds
    func testChildClassFinds() {
        let randomCatId = self.cats[self.catIndex].id
        let randomDogId = self.dogs[self.dogIndex].id
        let randomDodgeId = self.dodges[self.dodgeIndex].id
        let randomTeslaId = self.teslas[self.teslaIndex].id
        
        self.measure {
            let _ = Cat.find(cats: self.cats, with: randomCatId)
            let _ = Dog.find(dogs: self.dogs, with: randomDogId)
            let _ = Dodge.find(dodges: self.dodges, with: randomDodgeId)
            let _ = Tesla.find(teslas: self.teslas, with: randomTeslaId)
        }
    }
    
    // 2. test parent class finds
    func testParentClassFinds() {
        let randomCatId = self.cats[self.catIndex].id
        let randomDogId = self.dogs[self.dogIndex].id
        let randomDodgeId = self.dodges[self.dodgeIndex].id
        let randomTeslaId = self.teslas[self.teslaIndex].id
        
        self.measure {
            let _ = Pet.find(pets: self.cats, with: randomCatId)
            let _ = Pet.find(pets: self.dogs, with: randomDogId)
            let _ = Car.find(cars: self.dodges, with: randomDodgeId)
            let _ = Car.find(cars: self.teslas, with: randomTeslaId)
        }
    }
    
    // 3. test generic finds
    func testGenericFinds() {
        let randomCatId = self.cats[self.catIndex].id
        let randomDogId = self.dogs[self.dogIndex].id
        let randomDodgeId = self.dodges[self.dodgeIndex].id
        let randomTeslaId = self.teslas[self.teslaIndex].id
        
        self.measure {
            let _ = find(objects: self.cats, with: randomCatId)
            let _ = find(objects: self.dogs, with: randomDogId)
            let _ = find(objects: self.dodges, with: randomDodgeId)
            let _ = find(objects: self.teslas, with: randomTeslaId)
        }
    }
    
    // 4. test apple filter
    func testAppleFilter() {
        let randomCatId = self.cats[self.catIndex].id
        let randomDogId = self.dogs[self.dogIndex].id
        let randomDodgeId = self.dodges[self.dodgeIndex].id
        let randomTeslaId = self.teslas[self.teslaIndex].id
        
        self.measure {
            let _ = self.cats.filter({ (cat: Cat) -> Bool in
                cat.id == randomCatId
            })
            
            let _ = self.dogs.filter({ (dog: Dog) -> Bool in
                dog.id == randomDogId
            })
            
            let _ = self.dodges.filter({ (dodge: Dodge) -> Bool in
                dodge.id == randomDodgeId
            })
            
            let _ = self.teslas.filter({ (tesla: Tesla) -> Bool in
                tesla.id == randomTeslaId
            })
        }
    }
    
    //******************************************************************************************************************
    // MARK: - Additional Examples
    
    // test description
    func testDescription() {
        let randomCatId = self.cats[self.catIndex].id
        let foundCats = find(objects: self.cats, with: randomCatId)
        print("******************** Description Test ********************")
        print(foundCats)
        print("******************** Description Test ********************")
    }
    
}
