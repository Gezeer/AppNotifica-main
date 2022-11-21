//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit


class LoginCoordinator : Coordinator {
    
    var navigationController : UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onRegisterTap = {
            self.gotoResgister()
        }
        viewController.onLoginTap = {
            self.gotoLogin()
        }
    }
    func gotoResgister(){
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func gotoLogin(){
        let coordinator = TabBarCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    
}
