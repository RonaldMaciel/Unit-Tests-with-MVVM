//
//  AccountBalance.swift
//  UnitTestExample
//
//  Created by Ronald on 10/11/23.
//

import UIKit


struct AccountBalance {
    let balance: Double
    
    func getSpecialLimit() -> Double {
        if balance < 100 {
            return balance + 10
        } else if balance > 500 {
            return balance + 1000
        }
        
        return balance
    }
}
