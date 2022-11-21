//
//  NovaOcorrenciaViewController.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController:ViewControllerDefault{
    //MARK: - Clouseres
    
    
    //cria variavel
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        
        return novaOcorrenciaView
    }()
    override func loadView() {
        self.view = novaOcorrenciaView
    }
    
    
    //é executado quando esta carregando
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
        
    }
}
