//
//  ViewController.swift
//  miPrimeraApp
//
//  Created by Gigitb on 3/4/19.
//  Copyright © 2019 Gigitb. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBAction func regresar(_ sender: UIButton) {
        label.text = "hola"
         view.backgroundColor = UIColor.yellow
    }
    
    @IBOutlet weak var Holis: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
