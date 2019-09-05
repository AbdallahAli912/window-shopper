//
//  ViewController.swift
//  window shopper
//
//  Created by Abdallah Ali on 9/5/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     let calcBtn = UIButton (frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
         calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.9803884846)
         calcBtn.setTitle("Calcualte", for: .normal)
         calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calcualte), for:.touchUpInside )
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden =  true
        hoursLbl.isHidden = true
    }

    @objc func calcualte() {
        if let wageTxt = wageTxt.text , let priceTxt=priceTxt.text{
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
       
    }
    
    
    @IBAction func clearClaculatorPressed(_ sender: Any) {
        resultLbl.isHidden =  true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
}

