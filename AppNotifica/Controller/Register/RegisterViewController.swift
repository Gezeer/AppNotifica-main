//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class RegisterViewController: ViewControllerDefault{
    
    //MARK: - INITIALIZE
     var onLoginTap:(() -> Void)?
    
        lazy var registerView: RegisterView = {
        let registerView = RegisterView()
            
            registerView.onLoginTap = {
                self.onLoginTap?()
            }
        return registerView
    }()
    
    override func loadView() {
        self.view = registerView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
       
    }
}
