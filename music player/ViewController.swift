//
//  ViewController.swift
//  music player
//
//  Created by Nureddin Elmas on 2021-12-06.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBAction func slider(_ sender: UISlider) {
        player?.volume = sender.value
    }
    
    var player:AVPlayer?
    var playerItem:AVPlayerItem?
    var kontrol = true
    let url1 = "http://sverigesradio.se/topsy/direkt/srapi/207.mp3"
    let url = URL(string: "http://sverigesradio.se/topsy/direkt/srapi/207.mp3")
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let playerItem:AVPlayerItem = AVPlayerItem(url: url!)
        player = AVPlayer(playerItem: playerItem)
    }
  
    
    @IBAction func pressed(_ sender: UIButton) {
        if kontrol {
            player?.play()
            kontrol = false
            sender.setTitle("Pause", for: .normal)
           
        } else{
            player?.pause()
            kontrol = true
            sender.setTitle("Play", for: .normal)
        }
        
    }

}

