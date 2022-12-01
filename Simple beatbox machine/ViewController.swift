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
        
        playSound((sender.titleLabel?.text!)!)
        
    }
    
    func playSound(_ whichButtonPressed: String) {
        let url = Bundle.main.url(forResource: "\(whichButtonPressed)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

