//
//  StringUtilsTest.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 02/11/23.
//

import XCTest
@testable import UnitTestExample

final class StringUtilsTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testIsValidEmail() {
        let email = "email@gmail.com"
        let value = email.isValidEmail()
        
        XCTAssertTrue(value, "Not a valid email!")
    }
    
    
    func testRemoveWhiteSpaces() {
        let text = "hEllo, wOrLD"
        let value = text.removeWhiteSpaces()
        
        XCTAssert(value == "hEllo,wOrLD", "Didn't removed spaces")
    }
    
    func testReplace() {
        let text = "string"
        let newTest = text.replace(string: "s", 
                                   replacement: "z")
        
        let newTest2 = text.replace(string: "i", replacement: "y")
        
        XCTAssert(newTest == "ztring")
        XCTAssert(newTest2 == "stryng")
    }


}
