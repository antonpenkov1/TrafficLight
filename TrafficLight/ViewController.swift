//
//  ViewController.swift
//  TrafficLight
//
//  Created by Антон Пеньков on 05.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightLabel: UIView!
    @IBOutlet var yellowLightLabel: UIView!
    @IBOutlet var greenLightLabel: UIView!
    @IBOutlet var startButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.layer.cornerRadius = 60
        yellowLightLabel.layer.cornerRadius = 60
        greenLightLabel.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        changeLight()
    }
    
    private func changeLight() {
        if redLightLabel.layer.opacity == 1 {
            redLightLabel.layer.opacity = 0.3
            yellowLightLabel.layer.opacity = 1
        } else if yellowLightLabel.layer.opacity == 1 {
            yellowLightLabel.layer.opacity = 0.3
            greenLightLabel.layer.opacity = 1
        } else if greenLightLabel.layer.opacity == 1 {
            greenLightLabel.layer.opacity = 0.3
            redLightLabel.layer.opacity = 1
        } else {
            redLightLabel.layer.opacity = 1
        }
    }
    
}

