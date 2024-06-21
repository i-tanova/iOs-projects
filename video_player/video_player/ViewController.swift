//
//  ViewController.swift
//  video_player
//
//  Created by Ivana Tanova on 29/01/2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func findVideo(){
        guard let path = Bundle.main.path(forResource: "video", ofType: "mp4") else {
            debugPrint("video not found")
            return
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "video", ofType: "mp4") else {
            debugPrint("video not found")
            return
        }
        let player = AVPlayer(url:  URL(fileURLWithPath: path) )
        let playerController = AVPlayerViewController()
        playerController.player = player
        // The present function is used to display the player.
        present(playerController, animated: true){
            player.play()
        }
    }


}

