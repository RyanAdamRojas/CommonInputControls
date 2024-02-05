//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Ryan Adam Rojas on 6/8/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.addTarget(self, action: #selector(buttonTapped(_:) ),
                         for: .touchUpInside)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        print("The button was tapped!")
        if toggle.isOn {
            print("Switch is on!")
        } else {
            print("Switch is off!")
        }
        print("Slider is at \(slider.value)")
    }

    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is on!")
        } else {
            print("Switch is off!")
        }
    }
    @IBAction func sliderMoved(_ sender: UISlider) {
        print("Slider is at \(sender.value)")
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
//        if sender.isSelected == false {
//
//        }
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}
