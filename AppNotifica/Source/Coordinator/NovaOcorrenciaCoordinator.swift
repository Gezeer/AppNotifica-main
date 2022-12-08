//
//  NovaOcorrenciaCoordinator.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit

class NovaOcorrenciaCoordinator: Coordinator {
    
    private let navigationController : UINavigationController
    
    lazy var novaOcorrenciaViewController : NovaOcorrenciaViewController = {
        let ViewController = NovaOcorrenciaViewController()
        
        ViewController.tabBarItem.title = "Nova Ocorrência"
        ViewController.tabBarItem.image = UIImage(systemName: "note.text.badge.plus")
        
        return ViewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
