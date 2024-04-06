//
//  ViewController.swift
//  TrafficLoght
//
//  Created by Виталий Аксенов on 05.04.2024.
//

import UIKit

enum TrafficLightStatus {
    case red
    case yellow
    case green
}


final class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startSwitchButton: UIButton!
    
    var trafficLightStatus: TrafficLightStatus = .green
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.layer.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.layer.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.layer.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        startSwitchButton.setTitle("Start", for: .normal)
    }
    
    @IBAction func startSwithcButtonDidTapped() {
        if startSwitchButton.title(for: .normal) == "Start" {
            startSwitchButton.setTitle("Next", for: .normal)
        }
        
        switch trafficLightStatus {
        case .red:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            trafficLightStatus = .yellow
        case .yellow:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            trafficLightStatus = .green
        case .green:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            trafficLightStatus = .red
        }
        
    }
    

}

