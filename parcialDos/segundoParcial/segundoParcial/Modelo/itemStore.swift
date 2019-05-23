//
//  itemStore.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera
//  Created by Gema Georgina Toledo Barrera
//  on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//  Copyright © 2019 Gema Georgina Toledo Barrera. All rights reserved.


import UIKit

struct Item{
    
    var uid:String
    var title:String
    var price:Double
    var image:UIImage
}

class ItemStore{
    
    var items:[Item]=[
        Item(uid: "Camiseta", title: "Camiseta", price: 599, image:UIImage(named: "img_camiseta")!),
        Item(uid: "Puzzle", title:"Puzzle", price:299, image: UIImage(named: "img_puzzle")!),
        Item(uid: "Taza", title: "Taza", price: 199, image: UIImage(named: "img_taza")!)
    ]




func getPriceFor(itemWith uid:String)->Double?{
    for item in self.items {
        if item.uid == uid{
            
            return item.price
            
        }
    }
    
    return nil
    
}
}
