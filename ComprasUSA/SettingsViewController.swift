//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Thiago Antonio Ramalho on 02/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var dolarVlue: UITextField!
    @IBOutlet weak var iofTax: UITextField!
    @IBOutlet weak var stateTax: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        dolarVlue.text = tc.getFormmatedValue(tc.dolar, currency: "")
        iofTax.text = tc.getFormmatedValue(tc.iof, currency: "")
        stateTax.text = tc.getFormmatedValue(tc.stateTax, currency: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        
        if let dolar = dolarVlue.text {
            tc.dolar = tc.converStrInDouble(dolar)
        }

        if let iof = iofTax.text {
            tc.iof = tc.converStrInDouble(iof)
        }

        if let stateTax = stateTax.text {
            tc.stateTax = tc.converStrInDouble(stateTax)
        }
    }
}

extension SettingsViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
