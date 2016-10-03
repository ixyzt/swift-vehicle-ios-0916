//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Bejan Fozdar on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Vehicle {
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed = 0.0
    var heading = 0.0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    // set speed to maxspeed
    func goFast() {
        
        speed = maxSpeed
    }
    
    // stop vehicle
    func halt() {
        speed = 0
    }
    
    // accelerate = Decrement speed by 1/10th of max speed, speed cannot exceed max speed
    func accelerate() {
        speed += maxSpeed / 10.0
        if speed > maxSpeed {
        speed = maxSpeed
        }
        
    }
    
    // decelerate = Decrement speed by 1/10th of max speed, speed cannot go below zero
    func decelerate() {
        switch speed - (maxSpeed / 10.0) >= 0 {
        case true:
            speed -= maxSpeed / 10.0
        default:
            speed = 0
        }
    }
    
    // turnRight = if speed is greater than zero, divide speed by 2, and change heading by +90 degrees
    func turnRight() {
        if speed > 0 {
            speed = speed/2
            heading += 90.0
            if heading > 360 {
                heading = Double(Int(heading) % 360)
            }
        }
    }
    
    // turnLeft = if speed is greater than zero, divide speed by 2, and change heading by -90
    func turnLeft() {
        
        if speed > 0 {
            speed = speed/2
            heading -= 90
            if heading < 0 && heading > -360 {
                heading = Double((Int(heading) + 360) % 360)
            }
        }
    }
    
    
    
}
