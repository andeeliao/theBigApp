//
//  ViewController.swift
//  PocketKevinLau
//
//  Created by xue qi liao on 5/21/19.
//  Copyright © 2019 xue qi liao. All rights reserved.
//

import UIKit
import AVFoundation

class AmazingViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButton()
        setupAudioPlayer()
    }
    
    private func addButton() {
        let heartGif = UIImage.gifImageWithName("heartpoosh")
        
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        button.layer.cornerRadius = button.frame.height / 2
        button.backgroundColor = .white
        button.setImage(heartGif, for: .normal)
        view.addSubview(button)
        button.center = view.center
        
        button.addTarget(self, action: #selector(playHeart(_:)), for: .touchUpInside)
    }
    
    private func setupAudioPlayer() {
        do {
            if let fileURL = Bundle.main.path(forResource: "heartheartheart", ofType: "wav") {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
            } else {
                print("No file with specified name exists")
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
        }
    }
    
    @objc private func playHeart(_ sender:UIButton!) {
        audioPlayer?.play()
    }
}
