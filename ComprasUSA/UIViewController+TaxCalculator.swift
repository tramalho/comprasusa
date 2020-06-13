//
//  UIViewController+TaxCalculator.swift
//  ComprasUSA
//
//  Created by Thiago Antonio Ramalho on 12/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

extension UIViewController {
    var tc: TaxCalculator {
        return TaxCalculator.shared
    }
}
