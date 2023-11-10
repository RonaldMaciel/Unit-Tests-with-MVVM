//
//  AccountViewModel.swift
//  UnitTestExample
//
//  Created by Ronald on 10/11/23.
//

import UIKit

protocol AccountViewModelProtocol {
    func loginButtonTapped()
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermition: () -> (),
                               completion: () -> ())
    var instructions: String { get }
}

class AccountViewModel {
    
    private let shouldUseLocation: Bool
    private var model: AccountModel
    
    init(shouldUseLocation: Bool, model: AccountModel) {
        self.shouldUseLocation = shouldUseLocation
        self.model = model
    }
}

extension AccountViewModel: AccountViewModelProtocol {
    var instructions: String {
        if shouldUseLocation {
            return model.instruction + " with location"
        }
        return model.instruction
    }
    
    func loginButtonTapped() {
        print("Login Successful!")
    }
    
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermition: () -> (),
                               completion: () -> ()) {
        if shouldUseLocation {
            askUserPermition()
            completion()
            return
        }
        
        showAlert()
        completion()
    }
}
