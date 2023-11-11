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
    var status: String { get set }
}

class AccountViewModel {
    
    private let shouldUseLocation: Bool
    private var model: AccountModel
    private let service: ServiceProviderProtocol
    
    var status: String
    
    init(shouldUseLocation: Bool, model: AccountModel, service: ServiceProviderProtocol = ServiceProvider()) {
        self.shouldUseLocation = shouldUseLocation
        self.model = model
        self.service = service
        self.status = ""
    }
    
    func getJoke() {
        service.getJoke { result, err in
            if err != nil {
                self.status = "error"
                return
            }
            
            self.status = result![0]
        }
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
    
    var instructions: String {
        if shouldUseLocation {
            return model.instruction + " with location"
        }
        return model.instruction
    }

}
