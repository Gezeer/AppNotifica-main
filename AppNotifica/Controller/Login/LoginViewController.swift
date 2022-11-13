//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class LoginViewController:UIViewController {
    
    //MARK: - Clousures
    
    var onRegisterTap:(()-> Void)?
    
   lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        return loginView
    }()

    override func loadView() {
        self.view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
