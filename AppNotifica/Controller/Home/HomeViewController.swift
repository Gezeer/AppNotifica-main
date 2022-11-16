//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 16/11/22.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    
    //MARK: - Clouseres
    
    
    //cria variavel
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        
        return homeView
    }()
    override func loadView() {
        self.view = homeView
    }
    
    
    //é executado quando esta carregando
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"

    }
}

