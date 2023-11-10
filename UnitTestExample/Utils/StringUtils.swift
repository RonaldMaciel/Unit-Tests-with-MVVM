//
//  StringUtils.swift
//  UnitTestExample
//
//  Created by Ronald on 02/11/23.
//

import Foundation

extension String {
    func removeWhiteSpaces() -> String {
        return self.replace(string: " ", replacement: "")
    }
    
    func replace(string: String, 
                 replacement: String) -> String {
        return self.replacingOccurrences(of: string, with: replacement)
    }
    
    func isValidEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        return emailTest.evaluate(with: self)
    }
}
