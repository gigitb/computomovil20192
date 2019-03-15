//
//  ViewController.swift
//  ColorMix
//
//  Created by Gigitb on 3/11/19.
//  Copyright © 2019 Gigitb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //estoy declarando una propiedad
    //las notaciones con @ quiere decir que esta enlazada a una interfaz es decir @InterfaceBuilder

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor =
        UIColor.black.cgColor
        print("Ya me cargue")        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchAction(_ sender: Any) {
        
    }
    
    
    @IBAction func sliderAction(_ sender: Any) {
    }
    
    
    @IBAction func AprietaAction(_ sender: Any) {
    }
    
    
}

