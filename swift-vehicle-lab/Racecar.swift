//
//  Racecar.swift
//  swift-vehicle-lab
//
//  Created by Bejan Fozdar on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    // override inherited speed from Car.  Racecar accelerates by 1/5th max speed
    override func accelerate() {
        
        speed += maxSpeed / 5
        if speed > maxSpeed {
            speed = maxSpeed
        }
    
    }
    
    // override inherited speed from Car.  Racecar accelerates by 1/5th max speed
    override func decelerate() {
        
        speed -= maxSpeed / 5
        if speed < 0 {
            speed = 0
        }
    }
    
    //if speed is greater than 0, INCREASE heading by 90 degrees, reduce current speed by 1/4
    func driftRight() {
        
        if speed > 0 {
            heading += 90
            speed -= speed / 4
        }
        if heading > 360 {
            heading = Double(Int(heading) % 360)
        }
    
    }
    
    //if speed is greater than 0, DECREASE heading by 90 degrees, reduce current speed by 1/4
    func driftLeft() {
        if speed > 0 { heading -= 90
            speed -= speed / 4 }
        if heading < 0 && heading > -360 {
            heading = Double((Int(heading) + 360) % 360)
        }
    }
    
}
