//
//  AsyncProcess.swift
//  UnitTestExample
//
//  Created by Ronald on 11/11/23.
//

import UIKit

class AsyncProcess {
    var name = ""
    
    func callResultsInsideEffects() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.name = "ciel"
        }
    }
    
    func doSomething(_ completion: @escaping (String) -> ()) {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            completion("izzy")
        }
    }
}
