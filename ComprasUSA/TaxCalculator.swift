//
//  File.swift
//  ComprasUSA
//
//  Created by Thiago Antonio Ramalho on 12/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import Foundation

class TaxCalculator {
    
    var dolar: Double = 3.5
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double = 0.0
    
    static let shared = TaxCalculator()
    
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
}

    var stateTaxValue: Double {
        return shoppingValue * stateTax / 100
    }
    
    var iofValue: Double {
        return (shoppingValue + stateTax) * iof/100
    }

    private init() {}
    
    func calculate(useCreditCard: Bool) -> Double {
        var finalValue = shoppingValue + stateTaxValue
        
        if useCreditCard {
            finalValue += iofValue
        }
        
        return finalValue
    }
}
