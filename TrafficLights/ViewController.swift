//
//  ViewController.swift
//  TrafficLights
//
//  Created by Daniil on 2.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var trafficButton: UIButton!
    
    var currentLightColor = CurrentLightColor.red
    
    enum CurrentLightColor {
        case red, yellow, green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficButton.setTitle("START", for: .normal)
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        trafficButton.layer.cornerRadius = 20
        
        redLight.layer.cornerRadius = redLight.bounds.height / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.height / 2
        greenLight.layer.cornerRadius = greenLight.bounds.height / 2
    }

    @IBAction func trafficButtonPressed() {
        trafficButton.setTitle("NEXT", for: .normal)
        
        switch currentLightColor {
        case .red:
            currentLightColor = .yellow
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        case .yellow:
            currentLightColor = .green
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        case .green:
            currentLightColor = .red
            greenLight.alpha = 1
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
        }
    }
}

