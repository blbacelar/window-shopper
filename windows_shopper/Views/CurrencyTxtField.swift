//
//  CurrencyTxtField.swift
//  windows_shopper
//
//  Created by Bacelar on 2018-01-25.
//  Copyright © 2018 Bacelar. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect){
        let size: CGFloat = 20
        let lblCurrency = UILabel(frame: CGRect(x:5, y:(frame.size.height / 2) - size / 2, width: size, height: size))
        
        lblCurrency.backgroundColor = #colorLiteral(red: 0.5974257047, green: 0.5974257047, blue: 0.5974257047, alpha: 0.8)
        lblCurrency.textAlignment = .center
        lblCurrency.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lblCurrency.layer.cornerRadius = 5.0
        lblCurrency.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        lblCurrency.text = formatter.currencySymbol
        addSubview(lblCurrency)
    }
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
