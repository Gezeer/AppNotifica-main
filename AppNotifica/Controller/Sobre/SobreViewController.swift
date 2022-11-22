//
//  SobreViewController.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit

class SobreViewController:ViewControllerDefault{
//MARK: - Clouseres


//cria variavel
lazy var sobreView: SobreView = {
    let sobreView = SobreView()
    
    return sobreView
}()
override func loadView() {
    self.view = sobreView
}


//é executado quando esta carregando

override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Sobre"
 
}
}
