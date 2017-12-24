//
//  WarpView.swift
//  sigmoid velocity warp
//
//  Created by george on 12/24/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa

class WarpView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        let warpSinePath = NSBezierPath() // warped sine wave after processing
        
        warpSinePath.move(to: NSPoint(x:self.bounds.origin.x , y: self.bounds.origin.y + (self.bounds.height / 2) )) //zero crossing does not get time shifted
        
        
        
        
        
        for i in 0...720 {
         
            var timeShift = sineWave.amplitudeValues[i] * warpFactor
           // Swift.print("time shift for phase \(i) = \(timeShift)")
            
            warpSinePath.line(to: NSPoint(x: CGFloat((sineWave.rawTimeValues[i] + timeShift)/8 * 720), y: CGFloat(CGFloat(sineWave.adjustedAmplitudeValues[i] * 200) + (self.bounds.height/2))))
            
        }

        
    
        
        
        
        
        warpSineColor.setStroke()
        warpSinePath.lineWidth = 1
        warpSinePath.stroke()

        
        
        
        
        
        // Drawing code here.
    }
    
}
