//
//  ViewController.swift
//  Controls Practice
//
//  Created by влад on 07.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet var switches: [UISwitch]!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    var number: UInt8 = 128{
        didSet {
            updateUi()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      updateUi()
    }
    /// update oll outlets to number
    func updateUi() {
        button.setTitle("\(number)", for: [])
        
        // TODO: set sveetches to number
        
        slider.value = Float(number)
        textField.text = "\(number)"
    }

    @IBAction func buttonPressed() {
       number = UInt8((Int(number) + 1) % 256)
         
    }
    @IBAction func switchToggled(_ sender: UISwitch) {
        print(#line, #function, sender.tag)
    }
    @IBAction func sliderMoved() {
        number = UInt8(slider.value)
    }
    @IBAction func textFieldEdited() {
        number = UInt8(textField.text ?? "") ?? 128
    }
    
}

