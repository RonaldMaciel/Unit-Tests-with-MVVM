//
//  AccountViewModelSpecs.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 10/11/23.
//

import Quick
import Nimble
@testable import UnitTestExample

class AccountViewModelSpecs: QuickSpec {
    

    override static func spec() {
        describe("AccountViewModel") {
            var sut: AccountViewModel!
            context("Should Request Location") {
                it("Use Location True") {
                    sut = AccountViewModel(shouldUseLocation: true)
                    
                    var showALert = false
                    var askUserPermition = false
                    var completion = false
                    
                    sut.shouldRequestLocation(showAlert: {
                        showALert = true
                    }, askUserPermition: {
                        askUserPermition = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showALert).to(equal(false))
                    expect(askUserPermition).to(equal(true))
                    expect(completion).to(equal(true))
                    
                }
                
                it("Use Location False") {
                    sut = AccountViewModel(shouldUseLocation: false)
                    
                    var showALert = false
                    var askUserPermition = false
                    var completion = false
                    
                    sut.shouldRequestLocation(showAlert: {
                        showALert = true
                    }, askUserPermition: {
                        askUserPermition = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showALert).to(equal(true))
                    expect(askUserPermition).to(equal(false))
                    expect(completion).to(equal(true))
                    
                }
            }
            
            // Verify if ViewModel assign with determined protocol
            context("AccountViewModelProtocol") {
                it("Verify AccountViewModelProtocol") {
                    sut = AccountViewModel(shouldUseLocation: false)
                    expect(sut).to(beAKindOf(AccountViewModelProtocol.self))
                }
            }
        }
    }

}
