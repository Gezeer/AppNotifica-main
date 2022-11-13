//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit


class LoginCoordinator : Coordinator {
    
    var navegationController : UINavigationController
    init(navegationController: UINavigationController) {
        self.navegationController = navegationController
    }
    
    func start() {
        
        let viewController = LoginViewController()
        self.navegationController.pushViewController(viewController, animated: true)
        
        viewController.onRegisterTap = {
            self.gotoResgister()
        }
    }
    func gotoResgister(){
        let coordinator = RegisterCoordinator(navegationController: navegationController)
        coordinator.start()
    }
    
    
    
}
