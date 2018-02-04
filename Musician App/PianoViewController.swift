//
//  PianoViewController.swift
//  Musician App
//
//  Created by Neal Goyal on 2/4/18.
//  Copyright © 2018 Neal Goyal. All rights reserved.
//

import UIKit
import AVFoundation

class PianoViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["c1", "c1s", "d1", "d1s", "e1", "f1", "f1s", "g1", "g1s", "a1", "a1s", "b1", "c2", "c1s", "d1", "d1s", "e1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(sound: soundArray[sender.tag - 1])
    }
    
    
    // Function to play the specific sounds
    func playSound(sound : String) {
        let soundURL = Bundle.main.url(forResource: sound, withExtension: "wav")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
