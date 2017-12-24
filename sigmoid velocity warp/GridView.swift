//
//  GridView.swift
//  sigmoid velocity warp
//
//  Created by george on 12/21/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa

@IBDesignable

class GridView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        //********** set up view border and rounding ************
        
         self.layer?.backgroundColor = graphBackgroundColor
        
        //border
        self.layer?.borderWidth = 1
        self.layer?.borderColor = NSColor.black.cgColor
        
        // round the view corners
        self.layer?.cornerRadius = 15
        
        //******************************************************
        
        
        //******************************************************
        //*******************  Draw background Gridlines *************
        
        let yDivisions:Int = 100 // 50 disions along y axis
        let xDivisions:Int = 120 //75 division along X axis
        
        
        let gridPath = NSBezierPath() //grid and axis lines
        
        
        
        //*******************  y axis divisions ****************
        
        for i in 0...yDivisions {
            gridPath.move(to: NSPoint(x:self.bounds.origin.x, y: (self.bounds.height / CGFloat(yDivisions)) * CGFloat(i) ) )
            
            gridPath.line(to: NSPoint(x: self.bounds.origin.x + self.bounds.width, y: (self.bounds.size.height / CGFloat(yDivisions)) * CGFloat(i) ) )
            
        }
        
        //*******************  x axis divisions ****************
        
        for i in 0...xDivisions {
            
            gridPath.move(to: NSPoint(x: ((self.bounds.width / CGFloat(xDivisions)) * CGFloat(i)) , y: self.bounds.origin.y))
            
            gridPath.line(to: NSPoint(x: ((self.bounds.width / CGFloat(xDivisions)) * CGFloat(i)) , y: self.bounds.origin.y + self.bounds.size.height ))
            
            
        }
        
        // stroke main axis gridlines
       
        
        gridColor.setStroke()
        gridPath.lineWidth = 0.5
        gridPath.stroke()
        
        
        //******************************************************
        //*******************  Draw Higlight Gridlines *********
        

        
        let axisPath = NSBezierPath() //grid and axis lines
        

        //*******************  Draw zero axis  *****************
        
        axisPath.move(to: NSPoint(x:self.bounds.origin.x, y: (self.bounds.height) / 2  )  )
        axisPath.line(to: NSPoint(x:self.bounds.origin.x + self.bounds.width, y: (self.bounds.height) / 2  )  )
        
        zeroAxisColor.setStroke()
        axisPath.lineWidth = 1
        axisPath.stroke()
        
        //******************************************************
        
        // y axis highlights ...highlight every 5th gridline
        
        for i in stride(from: 0, to: (yDivisions), by: 5) {
            
            //Swift.print("i =  \(i)")
            
            axisPath.move(to: NSPoint(x:self.bounds.origin.x, y: (self.bounds.height / CGFloat(yDivisions)) * CGFloat(i) )  )
            axisPath.line(to: NSPoint(x: self.bounds.origin.x + self.bounds.width, y: (self.bounds.size.height / CGFloat(yDivisions)) * CGFloat(i) )  )
            
        }
        
        
        // x axis highlights ...highlight every 5th gridline
        
        for i in stride(from: 0, through: xDivisions, by: 5){
            
            axisPath.move(to: NSPoint(x: ((self.bounds.width / CGFloat(xDivisions)) * CGFloat(i)) , y: self.bounds.origin.y ))
            
            axisPath.line(to: NSPoint(x: ((self.bounds.width / CGFloat(xDivisions)) * CGFloat(i)) , y: self.bounds.origin.y + self.bounds.size.height  ))
        }
        
        
        
        axisColor.setStroke()
        axisPath.lineWidth = 0.5
        axisPath.stroke()
      
       
        
        
        
        
        
           } // end of draw method
    
}
