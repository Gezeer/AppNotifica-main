//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 16/11/22.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    
    private let navigationController : UINavigationController
    
    lazy var homeViewController : HomeViewController = {
        let ViewController = HomeViewController()
        ViewController.tabBarItem.title = "Home"
        ViewController.tabBarItem.image = UIImage(systemName: "homekit")
        
        return ViewController
    }()

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        
        
    }
}

