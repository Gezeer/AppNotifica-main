//
//  RegisterCoordinator.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 12/11/22.
//

import Foundation
import UIKit


class RegisterCoordinator : Coordinator {
    
    var navegationController : UINavigationController
    init(navegationController: UINavigationController) {
        self.navegationController = navegationController
    }
    
    func start() {
        
        let viewController = RegisterViewController()
        self.navegationController.pushViewController(viewController, animated: true)
        
    }
}
