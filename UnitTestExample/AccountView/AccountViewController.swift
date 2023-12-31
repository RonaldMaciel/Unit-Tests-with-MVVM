//
//  AccountViewController.swift
//  UnitTestExample
//
//  Created by Ronald on 10/11/23.
//

import UIKit

class AccountViewController: UIViewController {
    
    var viewModel: AccountViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .blue
        button.setTitle("Login", for: .normal)
        button.addTarget(self,
                         action: #selector(loginButtonTapped),
                         for: .touchUpInside)
        
        view.addSubview(button)
        
        viewModel?.shouldRequestLocation(showAlert: {
            print("ALERT")
        }, askUserPermition: {
            print("Get user location")
        }, completion: {
            print("Completion")
        })
        
        let instructionLabel = UILabel(frame: CGRect(x: 200, y: 200, width: 1000, height: 200))
        instructionLabel.text = viewModel?.instructions
        
        view.addSubview(instructionLabel)
        
    }
}

extension AccountViewController {
    @objc func loginButtonTapped() {
        viewModel?.loginButtonTapped()
    }
}
