//
//  ViewController.swift
//  Simple Audio Player
//
//  Created by Shailendra Suriyal on 16/01/17.
//  Copyright © 2017 RealDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var playButton: UIBarButtonItem!
    @IBOutlet var pauseButton: UIBarButtonItem!
    @IBOutlet var stopButton: UIBarButtonItem!
    
    @IBOutlet var volume: UISlider!
    @IBOutlet var playback: UISlider!
    
    @IBAction func playback(_ sender: Any) {
    }
    
    
    @IBAction func volume(_ sender: Any) {
    }
    
    @IBAction func play(_ sender: Any) {
    }
    
    
    @IBAction func stop(_ sender: Any) {
    }

    
    @IBAction func pause(_ sender: Any) {
    }
    
    
}

