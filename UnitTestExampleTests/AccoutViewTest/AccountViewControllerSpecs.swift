//
//  AccountViewControllerSpecs.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 10/11/23.
//

import Quick
import Nimble
@testable import UnitTestExample

class AccountViewModelMock: AccountViewModelProtocol {
    var status: String = ""
    
    var instructions: String { return "" }
    
    var loginButtonWasCalled = false
    
    func loginButtonTapped() {
        loginButtonWasCalled = true
    }
    
    func shouldRequestLocation(showAlert: () -> (), 
                               askUserPermition: () -> (),
                               completion: () -> ()) {}
}

class AccountViewControllerSpecs: QuickSpec {
    
    override static func spec() {
        describe("AccountViewController") {
            var sut: AccountViewController!
            var sutViewModelMock: AccountViewModelMock!
            
            beforeEach {
                sutViewModelMock = AccountViewModelMock()
                sut = AccountViewController(nibName: nil, bundle: nil)
                sut.viewModel = sutViewModelMock
            }
            
            context("Actions") {
                it("Login Button Tap") {
                    sut.loginButtonTapped()
                    expect(sutViewModelMock.loginButtonWasCalled).to(beTrue())
                }
            }

            afterEach { }
        }
    }
}
