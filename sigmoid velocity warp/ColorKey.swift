//
//  ColorKey.swift
//  sigmoid velocity warp
//
//  Created by george on 12/24/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa

@IBDesignable

class ColorKey: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        
        
        
        let sineRect = NSBezierPath()
        let warpRect = NSBezierPath()
        
        let sineColorRect:NSRect = NSRect(x: 10, y: 60, width: 10, height: 10)
        let warpColorRect:NSRect = NSRect(x: 10, y: 30, width: 10, height: 10)
        
        sineRect.appendRoundedRect(sineColorRect, xRadius: 2, yRadius: 2)
        warpRect.appendRoundedRect(warpColorRect, xRadius: 2, yRadius: 2)
        
        rawSineColor.setStroke()
        rawSineColor.setFill()
        sineRect.lineWidth = 1.0
        sineRect.fill()
        sineRect.stroke()
        
        warpSineColor.setStroke()
        warpSineColor.setFill()
        warpRect.lineWidth = 1.0
        warpRect.fill()
        warpRect.stroke()
        
        // Drawing code here.
    }
    
}
