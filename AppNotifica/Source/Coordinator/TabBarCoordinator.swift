//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    
    let navigationController : UINavigationController
 

    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabbarController = TabBarViewController()
        
        
        let homeViewController = HomeCoordinator(navigationController: self.navigationController)
        let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
        
        tabbarController.setViewControllers([homeViewController.homeViewController, novaOcorrenciaViewCoordinator.novaOcorrenciaViewController, sobreViewCoordinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController(tabbarController, animated: true)
    }
}
