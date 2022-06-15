//
//  ViewController.swift
//  Xylophone
//
//  Created by adi on 15/06/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func cKeyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "Sounds/C", withExtension: "wav") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            guard let player = player else { return }
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

