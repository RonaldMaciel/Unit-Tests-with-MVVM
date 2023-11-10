//
//  BeforeEachAfterEach.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 10/11/23.
//

import UIKit
import Quick

class BeforeEachAfterEach: QuickSpec {
    
    override static func spec() {
        describe("beforeEach and afterEach behaviour") {
            beforeEach {
                print("⭐️ Describe BEFORE each")
            }
            
            // First Context
            context("some context") {
                beforeEach {
                    print("👉 Context BEFORE each")
                }
                
                it("example 1") { print("🤓 example 1") }
                it("example 2") { print("🤓 example 2") }
                it("example 3") { print("🤓 example 3") }
                
                afterEach {
                    print("👉 Context AFTER each")
                }
            }
            
            // Second Context
            context("Another context") {
                beforeEach {
                    print("🍎 Context BEFORE each")
                }
                
                it("example 1") { print("😎 example 1") }
                it("example 2") { print("😎 example 2") }
                
                afterEach {
                    print("🍎 Context AFTER each")
                }
            }
            
            
            afterEach {
                print("⭐️ Describe AFTER each")
            }
        }
    }
}
