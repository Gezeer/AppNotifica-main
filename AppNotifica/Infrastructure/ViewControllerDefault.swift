//
//  ViewControllerDefault.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 16/11/22.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // faz com que o titulo superior fique maior
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        // faz com que o botão superior do navigationController desapareça
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        // faz com que o teclado desapareca clicando em qualquer lugar da tela
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hidekeyBoardByTappinOutSide))
        
        self.view.addGestureRecognizer(tap)
    }
    @objc
    func hidekeyBoardByTappinOutSide(){
        self.view.endEditing(true)
    }
}
