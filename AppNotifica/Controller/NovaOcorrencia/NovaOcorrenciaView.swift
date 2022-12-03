//
//  NovaOcorrenciaView.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault{
    
    var tituloTextField = TextFieldDefault(placeholder:"Titulo", keyBoardType: .emailAddress, returnKeyType: .next)
    
    var descricaoTextField = TextFieldDefault(placeholder:"Descrição", keyBoardType: .emailAddress, returnKeyType: .next)
    
    var localizacaoTextField = TextFieldDefault(placeholder:"Localização", keyBoardType: .emailAddress, returnKeyType: .next)
    
    var dataTextField = TextFieldDefault(placeholder:"Data", keyBoardType: .emailAddress, returnKeyType: .next)
    
    var statusTextField = TextFieldDefault(placeholder:"Status", keyBoardType: .emailAddress, returnKeyType: .done)
    
    
    var button = ButtonDefault(text: "SALVAR")
    
    override func setupVisualElements(){
       super.setupVisualElements()
        self.addSubview(tituloTextField)
        self.addSubview(descricaoTextField)
        self.addSubview(localizacaoTextField)
        self.addSubview(dataTextField)
        self.addSubview(statusTextField)
        self.addSubview(button)
        
        
        
        
        NSLayoutConstraint.activate([
            
                                    tituloTextField.widthAnchor.constraint(equalToConstant: 100),
                                     tituloTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 350),
                                     tituloTextField.heightAnchor.constraint(equalToConstant: 44),
                                     tituloTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
                                     tituloTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                                    
                                    
                                    descricaoTextField.widthAnchor.constraint(equalToConstant: 100),
                                    descricaoTextField.topAnchor.constraint(equalTo: tituloTextField.topAnchor, constant: 50),
                                    descricaoTextField.heightAnchor.constraint(equalToConstant: 44),
                                    descricaoTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
                                    descricaoTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                                    
                                    localizacaoTextField.widthAnchor.constraint(equalToConstant: 100),
                                    localizacaoTextField.topAnchor.constraint(equalTo: descricaoTextField.topAnchor, constant: 50),
                                    localizacaoTextField.heightAnchor.constraint(equalToConstant: 44),
                                    localizacaoTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
                                    localizacaoTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                                    
                                    dataTextField.widthAnchor.constraint(equalToConstant: 100),
                                   dataTextField.topAnchor.constraint(equalTo: localizacaoTextField.topAnchor, constant: 50),
                                   dataTextField.heightAnchor.constraint(equalToConstant: 44),
                                    dataTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
                                    dataTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                                    
                                    statusTextField.widthAnchor.constraint(equalToConstant: 100),
                                    statusTextField.topAnchor.constraint(equalTo: dataTextField.topAnchor, constant: 50),
                                    statusTextField.heightAnchor.constraint(equalToConstant: 44),
                                    statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
                                    statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                                    
                                    button.widthAnchor.constraint(equalToConstant: 358),
                                    button.heightAnchor.constraint(equalToConstant: 50),
                                    button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                    button.topAnchor.constraint(equalTo: statusTextField.topAnchor, constant: 60),
                                    button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
                                    ])
      }
}
