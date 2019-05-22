//
//  ViewController.swift
//  Ejercicio4
//
//  Created by Gigitb on 5/22/19.
//  Copyright © 2019 Gigitb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func accion(_ sender: Any) {
        if let sender = sender as? UISlider {
            print("Esto es un slider")
        }
       else if sender = sender as? UISwitch {
            
            print("Esto es un switch")
        }
        else if let sender = sender as?
            UIButton {
            print("Esto es button")
            if let uiLabel = sender.titleLabel {
                if let text = uiLabel.text{
                    print("text")
                    sender.titleLabel?.text = "holi crayoli"
                    if let text2 = sender.titleLabel?.text {
                        print(text2)
                    }
                }
            }
        }
    }

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

