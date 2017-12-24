//
//  ViewController.swift
//  sigmoid velocity warp
//
//  Created by george on 12/21/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa




var sineWave: SineWave = SineWave(frequency: 250, amplitude: 1)

var warpFactor: Float = 0.0
class ViewController: NSViewController {
    
    
    @IBOutlet weak var sineView: SineView!
    @IBOutlet weak var warpView: WarpView!
    
    @IBAction func warpSlider(_ sender: NSSlider) {
        
        warpFactor =  sender.floatValue * 0.0066
        warpView.setNeedsDisplay(warpView.bounds)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
 
    

}

