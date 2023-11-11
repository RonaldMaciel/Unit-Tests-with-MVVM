//
//  AsyncProcessSpec.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 11/11/23.
//

import Quick
import Nimble
@testable import UnitTestExample

class AsyncProcessSpec: QuickSpec {
    
    override static func spec() {
        describe("Async Process") {
            context("Call results inside effect") {
                it("Test variable name") {
                    let sutAsyncProcess = AsyncProcess()
                    sutAsyncProcess.callResultsInsideEffects()
                    
                    //toEventually lead with async. process
                    expect(sutAsyncProcess.name).toEventually(equal("ciel"))
                }
                
                it("Do Something") {
                    let sutAsyncProcess = AsyncProcess()
                    
                    //waitUntil lead with async. process that doesnt return
                    waitUntil { done in
                        sutAsyncProcess.doSomething { result in
                            expect(result).to(equal("izzy"))
                            done()
                        }
                    }
                }
            }
        }
    }
}
