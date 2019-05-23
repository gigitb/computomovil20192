//
//  CartViewController.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera
//  Created by Gema Georgina Toledo Barrera
//  on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//  Copyright © 2019 Gema Georgina Toledo Barrera. All rights reserved.


import UIKit

class CartViewController: UIViewController {
    @IBOutlet weak var item1ImageView: UIImageView!
    @IBOutlet weak var item1TitleLable: UILabel!
    @IBOutlet weak var item1PriceLable: UILabel!
    @IBOutlet weak var item1Stepper: UIStepper!
    @IBOutlet weak var item1QuantityLable: UILabel!
    var item1Quantity = 0
    
    
    
    
    @IBOutlet weak var item2ImageView: UIImageView!
    @IBOutlet weak var item2TitleLable: UILabel!
    @IBOutlet weak var item2PriceLable: UILabel!
    @IBOutlet weak var item2Stepper: UIStepper!
    @IBOutlet weak var item2QuantityLable: UILabel!
    var item2Quantity = 0
    
    
    @IBOutlet weak var item3ImageView: UIImageView!
    @IBOutlet weak var item3TitleLable: UILabel!
    @IBOutlet weak var item3PriceLable: UILabel!
    @IBOutlet weak var item3QuantityLable: UILabel!
    @IBOutlet weak var item3Stepper: UIStepper!
    var item3Quantity = 0
    
    @IBOutlet weak var totalBillLable: UILabel!
    
    
    var shoppingCart:ShoppingCart!
    var ItemStore:ItemStore!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.shoppingCart = ShoppingCart()
        self.ItemStore = shoppingCart.itemStore
        self.UpdateUI()
    
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if shoppingCart.getTotal() == 0{
            
            
        }
        
        self.UpdateUI()
    }
   
    func actualizarCuenta(){
     
        UpdateUI()
        
        
    }
    
    func UpdateUI(){
        if ItemStore.items.count >= 3{
            let item1 = ItemStore.items[0]
            item1ImageView.image = item1.image
            item1TitleLable.text = item1.title
            item1PriceLable.text = "$\(item1.price)"
            item1QuantityLable.text = "\(item1Quantity)"
            item1ImageView.layer.cornerRadius = 5.0
            item1ImageView.layer.masksToBounds = true
            
            
            let item2 = ItemStore.items[1]
            item2ImageView.image = item2.image
            item2TitleLable.text = item2.title
            item2PriceLable.text = "$\(item2.price)"
            item2QuantityLable.text = "\(item2Quantity)"
            item2ImageView.layer.cornerRadius = 5.0
            item2ImageView.layer.masksToBounds = true
            
            let item3 = ItemStore.items[2]
            item3ImageView.image = item3.image
            item3TitleLable.text = item3.title
            item3PriceLable.text = "$\(item3.price)"
            item3QuantityLable.text = "\(item3Quantity)"
            item3ImageView.layer.cornerRadius = 5.0
            item3ImageView.layer.masksToBounds = true
            
            let totalAmount = shoppingCart.getTotal()
            self.totalBillLable.text = "\(totalAmount)"
        }
    }
    
    //This function is resetting the app after you have selected all this things.
    func reset() {
        
        item1Quantity = 0
        item2Quantity = 0
        item3Quantity = 0
        item1Stepper.value = 0
        item2Stepper.value = 0
        item3Stepper.value = 0
    }
    
    
    
    @IBAction func item1StepperDidChange(_ sender: UIStepper) {
        let newQuantity = Int(sender.value)
        if newQuantity < item1Quantity{
            
            self.shoppingCart.remove(item: ItemStore.items[0])
        }else{
            self.shoppingCart.add(item: ItemStore.items[0])
        }
        
        item1Quantity = newQuantity
        self.UpdateUI()
        
        
    }
    
    
    @IBAction func item2StepperDidChange(_ sender:UIStepper){
        let newQuantity = Int(sender.value)
        if newQuantity < item2Quantity{
            self.shoppingCart.remove(item: ItemStore.items[1])
            
        }else{
            
            self.shoppingCart.add(item: ItemStore.items[1])
        }
        
        item2Quantity = newQuantity
        self.UpdateUI()
        
    }
    
    @IBAction func item3StepperDidChange(_ sender:UIStepper){
        let newQuantity = Int(sender.value)
        if newQuantity < item3Quantity{
            self.shoppingCart.remove(item: ItemStore.items[2])
        }else{
            self.shoppingCart.add(item: ItemStore.items[2])
        }
        item3Quantity = newQuantity
        self.UpdateUI()
    }
    
    
    
    //Navigation throught segue.
    
    
    struct StoryBoard{
        
        static let  showCheckout = "ShowCheckout"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.showCheckout{
            
            let checkOutVC = segue.destination as! CheckOutViewController
            checkOutVC.shoppingCart = self.shoppingCart
        }
    }
    
    
}
