//
//  File.swift
//  ComprasUSA
//
//  Created by Thiago Antonio Ramalho on 12/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import Foundation

class TaxCalculator {
    
    var dolar: Double = 3.49
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double = 0.0
    private let numberFormatter = NumberFormatter()
    
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

    private init() {
        numberFormatter.usesGroupingSeparator = true
    }
    
    func calculate(useCreditCard: Bool) -> Double {
        var finalValue = shoppingValue + stateTaxValue
        
        if useCreditCard {
            finalValue += iofValue
        }
        
        return finalValue * dolar
    }
    
    func converStrInDouble(_ strValue: String) -> Double {
        var result = 0.0
        //numberFormatter.locale = Locale.current
        numberFormatter.numberStyle = .none
        if let converted = numberFormatter.number(from: strValue) {
            result = converted.doubleValue
        }
        
        return result
    }
    
    func getFormmatedValue(_ value: Double, currency:String) -> String {
        numberFormatter.numberStyle = .currency
        numberFormatter.currencySymbol = currency
        numberFormatter.alwaysShowsDecimalSeparator = true
        
        return numberFormatter.string(for: value) ?? "\(currency) 0"
    }
}
