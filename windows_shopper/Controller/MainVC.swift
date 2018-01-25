//
//  ViewController.swift
//  windows_shopper
//
//  Created by Bacelar on 2018-01-25.
//  Copyright © 2018 Bacelar. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var edtHourlyWage: CurrencyTxtField!
    @IBOutlet weak var edtPrice: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x:0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        edtHourlyWage.inputAccessoryView = calcBtn
        edtPrice.inputAccessoryView = calcBtn
    }

    @objc func calculate(){
        
        print("It worked")
        
    }


}

