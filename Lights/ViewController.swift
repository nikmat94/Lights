//
//  ViewController.swift
//  Lights
//
//  Created by Никита  on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = 70
        yellowView.layer.cornerRadius = 70
        greenView.layer.cornerRadius = 70
        startButton.layer.cornerRadius = 20
    }
    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        if redView.alpha == 0.3,
           yellowView.alpha == 0.3,
           greenView.alpha == 0.3 {
                redView.alpha = 1
            return
            }
        if redView.alpha != 0.3,
           yellowView.alpha == 0.3,
           greenView.alpha == 0.3 {
                redView.alpha = 0.3
                yellowView.alpha = 1
            return
            }
        if redView.alpha == 0.3,
           yellowView.alpha != 0.3,
           greenView.alpha == 0.3 {
                yellowView.alpha = 0.3
                greenView.alpha = 1
            return
            }
        if redView.alpha == 0.3,
           yellowView.alpha == 0.3,
           greenView.alpha != 0.3 {
                greenView.alpha = 0.3
                redView.alpha = 1
            return
            }
    
        }
}


