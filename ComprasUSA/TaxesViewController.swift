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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
