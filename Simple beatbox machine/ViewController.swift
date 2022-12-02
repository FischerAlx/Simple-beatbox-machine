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
        
        
        UIView.animate(withDuration: 0.3) {
                sender.alpha = 0.5
            }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 ) {
            UIView.animate(withDuration: 0.1) {
                sender.alpha = 1.0
                self.playSound((sender.titleLabel?.text!)!)
            }
        }
        
    }
    
    func playSound(_ whichButtonPressed: String) {
        let url = Bundle.main.url(forResource: "\(whichButtonPressed)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

