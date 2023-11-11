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
                it("Test variavel name") {
                    let sutAsyncProcess = AsyncProcess()
                    sutAsyncProcess.callResultsInsideEffects()
                    
                    //toEventually lead with async. process 
                    expect(sutAsyncProcess.name).toEventually(equal("ciel"))
                }
            }
        }
    }
}
