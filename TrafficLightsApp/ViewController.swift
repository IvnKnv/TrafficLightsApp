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
    }
    
}

