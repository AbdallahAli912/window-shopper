//
//  CurrencyTxtField.swift
//  window shopper
//
//  Created by Abdallah Ali on 9/5/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.5309246182, green: 0.5768241882, blue: 0.6382721663, alpha: 0.7257330908)
        currencyLbl.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.clipsToBounds = true
        currencyLbl.layer.cornerRadius = 5.0
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
        }
        
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
