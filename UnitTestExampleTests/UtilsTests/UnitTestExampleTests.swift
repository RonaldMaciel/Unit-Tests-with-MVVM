//
//  UnitTestExampleTests.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 02/11/23.
//

import XCTest
@testable import UnitTestExample

final class UnitTestExampleTests: XCTestCase {

    // called before every other method;
    // prepare your variables and functions here
    override func setUpWithError() throws {
        print("1")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("3")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    
        print("2")
        
    }

}
