//
//  StringUtilsSpecQN.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 10/11/23.
//

import Nimble
import Quick
@testable import UnitTestExample

final class StringUtilsSpecQN: QuickSpec {
    override static func spec() {
        describe("StringUtils") {
            context("Is Valid Email") {
                it("Valid Email") {
                    let email = "email@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    
                    expect(isValidEmail).to(beTrue())
                }
                
                it("Invalid Email") {
                    let email = "email"
                    let isValidEmail = email.isValidEmail()
                    
                    expect(isValidEmail).to(beFalse())
                }
            }
        }
    }
}
