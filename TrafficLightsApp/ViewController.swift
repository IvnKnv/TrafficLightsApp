//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by applee on 20.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redViewLight: UIImageView!
    @IBOutlet weak var yellowViewLight: UIImageView!
    @IBOutlet weak var greenViewLight: UIImageView!
    @IBOutlet weak var startButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        redViewLight.layer.cornerRadius = 50
        yellowViewLight.layer.cornerRadius = 50
        greenViewLight.layer.cornerRadius = 50
        
    }

    @IBAction func startButtonTapped() {
        startButton.setTitle("Next", for: .normal)
        if redViewLight.alpha == yellowViewLight.alpha && redViewLight.alpha == greenViewLight.alpha {
            redViewLight.alpha = 1.0
        } else if redViewLight.alpha > yellowViewLight.alpha && redViewLight.alpha > greenViewLight.alpha {
            redViewLight.alpha = 0.3
            yellowViewLight.alpha = 1.0
        } else if yellowViewLight.alpha > redViewLight.alpha && yellowViewLight.alpha > greenViewLight.alpha {
            greenViewLight.alpha = 1.0
            yellowViewLight.alpha = 0.3
        } else if greenViewLight.alpha > redViewLight.alpha && greenViewLight.alpha > yellowViewLight.alpha {
            redViewLight.alpha = 1.0
            greenViewLight.alpha = 0.3
        }
    }
    
}

