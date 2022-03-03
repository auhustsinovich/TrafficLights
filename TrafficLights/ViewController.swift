//
//  ViewController.swift
//  TrafficLights
//
//  Created by Daniil on 2.03.22.
//

import UIKit

enum CurrentLightColor {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var trafficButton: UIButton!
    
    private let lightEnable: CGFloat = 1
    private let lightDisable: CGFloat = 0.3
    private var currentLightColor = CurrentLightColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficButton.setTitle("START", for: .normal)
        trafficButton.layer.cornerRadius = 20
        
        redLight.alpha = lightDisable
        yellowLight.alpha = lightDisable
        greenLight.alpha = lightDisable
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.bounds.height / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.height / 2
        greenLight.layer.cornerRadius = greenLight.bounds.height / 2
    }
    
    @IBAction func trafficButtonPressed() {
        trafficButton.setTitle("NEXT", for: .normal)
        
        switch currentLightColor {
        case .red:
            currentLightColor = .yellow
            redLight.alpha = lightEnable
            yellowLight.alpha = lightDisable
            greenLight.alpha = lightDisable
        case .yellow:
            currentLightColor = .green
            yellowLight.alpha = lightEnable
            redLight.alpha = lightDisable
        case .green:
            currentLightColor = .red
            greenLight.alpha = lightEnable
            redLight.alpha = lightDisable
            yellowLight.alpha = lightDisable
        }
    }
}


