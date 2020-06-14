//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Thiago Antonio Ramalho on 02/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {

    @IBOutlet weak var totalSale: UILabel!
    @IBOutlet weak var stateTax: UILabel!
    @IBOutlet weak var iofTax: UILabel!
    @IBOutlet weak var saleWithCreditCard: UISwitch!
    @IBOutlet weak var totalSaleWIthCharges: UILabel!
    @IBOutlet weak var taxDescription: UILabel!
    @IBOutlet weak var iofDescription: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
    }
    
    @IBAction func switchIOFAction(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    private func calculateTaxes() {
        let usaSymbol = "US$ "
        taxDescription.text = "imposto (\(tc.getFormmatedValue(tc.stateTax, currency: ""))%)"
        iofDescription.text = "IOF (\(tc.getFormmatedValue(tc.iof, currency: ""))%)"
        totalSale.text = tc.getFormmatedValue(tc.shoppingValue, currency: usaSymbol)
        stateTax.text = tc.getFormmatedValue(tc.stateTaxValue, currency: usaSymbol)
        iofTax.text = tc.getFormmatedValue(tc.iofValue, currency: usaSymbol)
        let total = tc.calculate(useCreditCard: saleWithCreditCard.isOn)
        totalSaleWIthCharges.text = tc.getFormmatedValue(total, currency: "R$ ")
    }
}
