//
//  ViewController.swift
//  TrafficLoght
//
//  Created by Виталий Аксенов on 05.04.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startSwitchButton: UIButton!
    
    enum TrafficLightStatus {
        case red
        case yellow
        case green
        case off
    }
    
    var trafficLightStatus: TrafficLightStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 90
        yellowLight.layer.cornerRadius = 90
        greenLight.layer.cornerRadius = 90
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        startSwitchButton.setTitle("Start", for: .normal)
    }
    
    @IBAction func startSwithcButtonDidTapped() {
        startSwitchButton.setTitle("Switch", for: .normal)
        
        switch trafficLightStatus {
        case .red:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            trafficLightStatus = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            trafficLightStatus = .green
        case .green:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            trafficLightStatus = .red
        case .off:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            trafficLightStatus = .red
        }
        
    }
    

}

