//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {  
        sender.alpha = 0.5
        playSound(buttonName: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                // Code to be executed after a 0.2 second delay (second thing)
                // Second thing
            sender.alpha = 1
            }
        
    }
    
    func playSound(buttonName: String) {
        let url = Bundle.main.url(forResource: buttonName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}



