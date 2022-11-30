//
//  ViewController.swift
//  Simple beatbox machine
//
//  Created by Александр Фишер on 27.11.22.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyKickPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text!)
        playSound()
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "Kick", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

