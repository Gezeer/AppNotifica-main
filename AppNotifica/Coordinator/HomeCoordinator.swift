//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 16/11/22.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    
    private let navegationController : UINavigationController
    
    lazy var homeViewController : HomeViewController = {
        let ViewController = HomeViewController()
        
        return ViewController
    }()

    init(navegationController: UINavigationController) {
        self.navegationController = navegationController
    }
    
    func start() {
        
        let viewController = HomeViewController()
        self.navegationController.pushViewController(viewController, animated: true)
        
        }
        
    
    
    //função que chama a registerView
    func gotoHome () {
        self.navegationController.popViewController(animated: true)
      
    }
}

