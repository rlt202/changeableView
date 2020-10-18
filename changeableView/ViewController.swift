//
//  ViewController.swift
//  changeableView
//
//  Created by Даниил Никулин on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeableView: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingColourOfView()
    }
    
    
    private func settingColourOfView() {
        changeableView.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value),
                                                      green: CGFloat(greenSlider.value),
                                                      blue: CGFloat(blueSlider.value),
                                                      alpha: 1)
    }

    private func formatingSlidersValue(slider: UISlider) -> String {
        String(format: "%.1f", slider.value)
    }
    
    @IBAction func changeValueOfLabels(sender: UISlider) {
        
        switch sender {
        case redSlider:
            redValue.text = formatingSlidersValue(slider: redSlider)
        case greenSlider:
            greenValue.text = formatingSlidersValue(slider: greenSlider)
        case blueSlider:
            blueValue.text = formatingSlidersValue(slider: blueSlider)
        default:
            break
        }
        settingColourOfView()
    }
}

