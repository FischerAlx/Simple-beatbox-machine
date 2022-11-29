//
//  ViewController.swift
//  Simple beatbox machine
//
//  Created by Александр Фишер on 27.11.22.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyKickPressed(_ sender: UIButton) {
        playSound()
        
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "Kick", withExtension: "wav") else { return }

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

