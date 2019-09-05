//
//  Wage.swift
//  window shopper
//
//  Created by Abdallah Ali on 9/5/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage:Double ,andPrice price :Double)->Int{
        return Int(ceil(price/wage))
    }
}
