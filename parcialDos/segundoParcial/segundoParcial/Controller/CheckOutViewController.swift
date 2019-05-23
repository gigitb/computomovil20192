//
//  CheckOutViewController.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera
//  Created by Gema Georgina Toledo Barrera
//  on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//  Copyright © 2019 Gema Georgina Toledo Barrera. All rights reserved.


import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet weak var TotalBillLable: UILabel!
    @IBOutlet weak var StandardShippingButton: UIButton!
    @IBOutlet weak var ExpressShippingButton: UIButton!
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    var shoppingCart: ShoppingCart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Check Out"
        StandardShippingButton.isEnabled = false //default is shown as standard shipping selected.
        self.updateUI()
    }
    
    func updateUI(){
        
        TotalBillLable.text = "\(shoppingCart.getTotal())"
    }
    
    
    func Indicator()
    {

        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        view.addSubview(self.activityIndicator)
        activityIndicator.startAnimating()
        //UIApplication.shared.beginIgnoringInteractionEvents()
        
    }
    
    @IBAction func standardShippingSelected(_ sender: Any) {
        shoppingCart.shippingType = .Standard
        StandardShippingButton.isEnabled = false
        ExpressShippingButton.isEnabled = true
        
        self.updateUI()
    }
    
    @IBAction func expressShippingSelected(_ sender: Any) {
        shoppingCart.shippingType = .express
        StandardShippingButton.isEnabled = true
        ExpressShippingButton.isEnabled = false
        
        self.updateUI()
    }
    
    
    @IBAction func placeOrderDidTap(_ sender: AnyObject)
    {
        let alertController = UIAlertController(title: "Confirmar Orden", message: "Por favor, confirme su pago por $\(shoppingCart.getTotal())!", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel) { (action) in
            
        }
        let confirmAction = UIAlertAction(title: "Confirmar", style: .default) { (action) in
            
            self.Indicator()
        
            
            
            let successActionSheet = UIAlertController(title: "¡GRACIAS!", message: "Tu pago por $\(self.shoppingCart.getTotal()) Se proceso correctamente, Por favor verifica tu email, se envio el recibo y el numero de guia de tu envio.", preferredStyle: .actionSheet)
            self.present(successActionSheet, animated: true, completion: nil)
            
            let continueShoppingAction = UIAlertAction(title: "Seguir Comprando", style: UIAlertAction.Style.default){ (action)
                in
                self.shoppingCart.reset()
                self.navigationController?.popToRootViewController(animated: true)
                self.dismiss(animated: true, completion: nil)
                
                
            }
            
            successActionSheet.addAction(continueShoppingAction)
            self.shoppingCart.reset()
        
        
        
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        
 
    
    }
    
}

