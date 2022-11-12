//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class RegisterViewController:UIViewController {
    
    var viewMain = RegisterView()
    
    override func loadView() {
        self.view = viewMain
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
