//
//  ViewController.swift
//  Musician App
//
//  Created by Neal Goyal on 2/4/18.
//  Copyright © 2018 Neal Goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func xylophonePressed(_ sender: Any) {
        performSegue(withIdentifier: "goToXylophone", sender: self)
    }
    @IBAction func pianoPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToPiano", sender: self)
    }
    @IBAction func trianglePressed(_ sender: Any) {
        performSegue(withIdentifier: "goToTriangle", sender: self)
    }
    
}

