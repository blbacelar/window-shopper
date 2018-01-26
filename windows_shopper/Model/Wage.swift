//
//  Wage.swift
//  windows_shopper
//
//  Created by Bacelar on 2018-01-25.
//  Copyright © 2018 Bacelar. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage:Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
