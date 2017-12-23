//
//  SineView.swift
//  sigmoid velocity warp
//
//  Created by george on 12/22/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa

class SineView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        let rawSinePath = NSBezierPath() //grid and axis lines
        
        rawSinePath.move(to: NSPoint(x:self.bounds.origin.x , y: self.bounds.origin.y + (self.bounds.height / 2) ))
        
        
        for i in 0...720 {
            
            rawSinePath.line(to: NSPoint(x: self.bounds.origin.x + CGFloat(i) , y: CGFloat(sineWave.amplitudeValues[i] * 200) + (self.bounds.height / 2)) )
        }
        
        rawSineColor.setStroke()
        rawSinePath.lineWidth = 1
        rawSinePath.stroke()
        
        // Drawing code here.
    }
    
}
