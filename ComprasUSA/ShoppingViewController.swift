//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Thiago Antonio Ramalho on 02/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {
    @IBOutlet weak var txFIeldOrder: UITextField!
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var dolarDesc: UILabel!
    

    override func viewWillAppear(_ animated: Bool) {
        setAmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        setAmount()
        txFIeldOrder.resignFirstResponder()
    }
    
    
    private func setAmount() {
        if let value = txFIeldOrder.text {
            tc.dolar = Double(value) ?? 0
        }
    }
}

