//
//  SineWave.swift
//  sigmoid velocity warp
//
//  Created by george on 12/22/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa

class SineWave: NSObject {
    
    
    //******** properties ***********************
    
    var amplitude: Float
    var frequency : Float
    
    
    //******** computed properties **************
    
    var period:Float {
        
        get{
            
           let period = (1/frequency)
            return period //ms
        }
        
    }

    //******** arrays to store values **************
    
    var amplitudeValues = [Float](repeating: 0.0, count: 361)
    var rawTimeValues = [Float](repeating: 0.0, count: 361) // array for time value corresponding phase angle for one unmodified sine wave cycle
    var warpedTimeValues = [Float](repeating: 0.0, count: 361)  //array for time value corresponding phase angle for one warped sine wave cycle
    
    //**** the warped waveform only changes the time distribution amplitudes remain unaltered ****
    
    
    
    //*************************************************
    //**************** initializer ********************
    
    //*** calculate sine wave values for raw sine wave
    //*** for the instance of this class created in 
    //*** Viewcontroller
    
    init(frequency: Float, amplitude:Float)   {
        
    
        self.frequency = frequency
        self.amplitude = amplitude
        
        for i in 0...359 {
            
            let radianValue: Float = i.degreesToRadians
            amplitudeValues[i] = (sin(radianValue))
            
            
//            Swift.print("here")
//            Swift.print("amplitude value for \(i) = \(amplitudeValues[i])")
            
        } // end for
        
      
        
    } // end init
    
    
    //*************************************************
    //*******************class methods ****************
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func calculateTimeForAngle ( angle: Float) -> Float {
        
        return (period * ( angle/360))
    }

}


//*****************************************************
//**** extension to convert degrees to radians ********

extension Int {
    var degreesToRadians: Float { return Float(self) * .pi / 180 }
}


//let values = [20, 2, 3]
//let doubles = values.map { $0 * 2 }
//let triples = values.map { $0 * 3
