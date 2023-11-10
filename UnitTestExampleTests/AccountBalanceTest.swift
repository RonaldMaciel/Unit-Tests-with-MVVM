//
//  AccountBalanceTest.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 10/11/23.
//

import XCTest
@testable import UnitTestExample

final class AccountBalanceTest: XCTestCase {
    
    var account: AccountBalance?
    
    func testGetSpecialBalance100() {
        account = AccountBalance(balance: 99)
        
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 109, "Saldo menor que 100, retorna saldo + 10")
    }
    
    func testGetSpecialBalance900() {
        account = AccountBalance(balance: 900)
        
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 1900, "Saldo maior que 500, retorna saldo + 1000")
        
        //Another example:
        XCTAssertGreaterThan(specialBalance ?? 0, (account?.balance ?? 0))
    }
    
    func testGetSpecialBalance400() {
        account = AccountBalance(balance: 400)
        
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 400, "Saldo entre 100 e 500 retorna o próprio saldo" )
    }

}
