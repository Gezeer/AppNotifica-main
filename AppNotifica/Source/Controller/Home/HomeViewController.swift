//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 16/11/22.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault, UITableViewDataSource, UITableViewDelegate{
    

    private let tableView:UITableView = {
        let tableView = UITableView()
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        return tableView
    }()
    
    
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
        tableView.dataSource = self
        view.addSubview(tableView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath)
        
      
        return cell
    }
}

