//
//  ViewController.swift
//  hustle-mode
//
//  Created by ROB on 2018-06-25.
//  Copyright © 2018 ROB. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    //variable player to play music
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Import audio to actually play sound
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError {
            print(error.description)
        }
    }
    // import finish for audio, start to tell about button press function
    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        player.play()
        UIView.animate(withDuration: 2.3, animations: { 
            self.rocket.frame = CGRect(x: 0, y: 20, width: 375, height: 216)

        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
            
        }
    

   

}
}
