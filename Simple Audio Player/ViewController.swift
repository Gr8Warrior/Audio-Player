//
//  ViewController.swift
//  Simple Audio Player
//
//  Created by Shailendra Suriyal on 16/01/17.
//  Copyright © 2017 RealDev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get audio path
        let audioPath = Bundle.main.path(forResource: "audio", ofType: "mp3")
        
        //feed the path into audioplayer
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath : audioPath!));
            playback.maximumValue = Float(audioPlayer.duration);
            
        } catch {
            print("Error")
        }
        
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
        print("playback")
        audioPlayer.currentTime = TimeInterval(playback.value)
    }
    
    
    @IBAction func volume(_ sender: Any) {
        audioPlayer.volume = volume.value;
        print("volume")
    }
    
    @IBAction func play(_ sender: Any) {
        print("play")
        playButton.isEnabled = false;
        audioPlayer.play()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updatePlayBack), userInfo: nil, repeats: true)
    }
    
    func updatePlayBack(){
        playback.value = Float(audioPlayer.currentTime)
        
    }
    
    @IBAction func stop(_ sender: Any) {
        print("stop")
        playButton.isEnabled = true;
        audioPlayer.stop()
        audioPlayer.currentTime = 0
    }

    
    @IBAction func pause(_ sender: Any) {
        print("pause")
        playButton.isEnabled = true;
        audioPlayer.pause()
        timer.invalidate()
        
    }
    
    
}

