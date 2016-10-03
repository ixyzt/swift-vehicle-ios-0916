//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Bejan Fozdar on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Car: Vehicle {
    
    let transmission: String
    let cylinders: Int
    let milesPerGallon: Double
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double) {
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
        
    }
    
    // use Vehicle accelerate()
    func drive() {
        super.accelerate()
    }
    
    // use Vehicle decelerate()
    func brake() {
        super.decelerate()
    }
    
}
