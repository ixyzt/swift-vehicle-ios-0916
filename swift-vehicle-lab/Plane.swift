//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Bejan Fozdar on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Plane:Vehicle {
    
    let maxAltitude: Double
    var altitude = 0.0
    var inFlight: Bool {
        if speed > 0 && altitude > 0 { return true }
        return false
    }
    
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    // takeoff = If plane is !inFlight, set speed to 1/10th maxspeed, and altitude to 1/10th max altitude
    func takeoff() {
        if !inFlight {
            speed = maxSpeed / 10; altitude = maxAltitude / 10
        }
    }
    
    // land = set speed and altitude to 0
    func land() {
        speed = 0
        altitude = 0
    }
    
    // climb = if inFlight, increase altitude by maxAltitude/10 and call decelerate()
    func climb() {
        if inFlight {
            switch altitude + maxAltitude / 10 <= maxAltitude {
            case true:
                altitude += maxAltitude / 10
                super.decelerate()
            default:
                altitude = maxAltitude
            }
        }
    }
    
    // dive = if inFlight, if altitude > altitude -10 = 0 then allow a decrease of -10, otherwise set altitude to zero
    func dive() {
        
        if altitude > 0 {
            altitude -= maxAltitude / 10
            super.accelerate()
        }
        if altitude < 0 {
            altitude = 0
        }
    }
    
    // bankRight = if inFlight, change heading by +45, and INCREASE spead by 10.  If heading is greater than 360, set the heading to the modulo of the current heading.
    func bankRight() {
        if inFlight {
            heading += 45
            speed -= speed / 10
        }
        if heading > 360 {
            heading = Double(Int(heading) % 360)
        }
    }
    
    // bankRight = if inFlight, change heading by -45, and DECREASE spead by 10.  If heading is greater than 360, set the heading to the modulo of the current heading.
    func bankLeft() {
        if inFlight {
            heading -= 45
            speed -= speed / 10
        }
        if heading < 0 && heading > -360 {
            heading = Double((Int(heading) + 360) % 360)
        }
    }
    
    
}
