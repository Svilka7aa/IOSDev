//
//  ViewController.swift
//  MyFirstIOSApp
//
//  Created by Svilen Petrov on 16/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel1: UILabel!
    
    @IBOutlet weak var sliderValueLabel: UILabel!
    
    var timesSecondButtonTapped = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ChangeTitle(_ sender: UIButton) {
        self.timesSecondButtonTapped += 1
        self.myLabel1.text = "Timmes tapped: \(self.timesSecondButtonTapped)"
        if self.timesSecondButtonTapped > 10 {
            self.myLabel1.textColor = .red
        }
        
        
    }
    @IBAction func SliderValueChanged(_ sender: UISlider) {
        self.sliderValueLabel.text = "Slider value: \(sender.value)"
    }
}

