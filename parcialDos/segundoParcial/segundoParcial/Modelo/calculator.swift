//
//  calculator.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera
//  Created by Gema Georgina Toledo Barrera
//  on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//  Copyright © 2019 Gema Georgina Toledo Barrera. All rights reserved.


import Foundation

class Calculator{
    
    var totalBeforeTax:Double
    var shippingCost:Double
    var total:Double
    
    private var taxPercentage:Double
    
    init(totalBeforeTax:Double,shippingCost:Double,total:Double,taxPercentage:Double){
        
        self.totalBeforeTax = totalBeforeTax
        self.shippingCost = shippingCost
        self.total = 0.0
        self.taxPercentage = taxPercentage
    }
    
    func getTotalAmount()->Double{
        let tax = totalBeforeTax * taxPercentage/100.0
        self.total = totalBeforeTax + tax + shippingCost
        
        return self.total
    }
}
