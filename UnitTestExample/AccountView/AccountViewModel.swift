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
}

class AccountViewModel {
    
    private let shouldUseLocation: Bool
    
    init(shouldUseLocation: Bool) {
        self.shouldUseLocation = shouldUseLocation
    }

}

extension AccountViewModel: AccountViewModelProtocol {
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
