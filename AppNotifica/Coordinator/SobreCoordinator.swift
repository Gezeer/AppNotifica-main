//
//  SobreCoordinator.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit

class SobreCoordinator: Coordinator {
    
    private let navigationController : UINavigationController
    
    lazy var sobreViewController : SobreViewController = {
        let ViewController = SobreViewController()
        
        ViewController.tabBarItem.title = "Sobre"
        ViewController.tabBarItem.image = UIImage(systemName: "info.square")
        
        return ViewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
}
