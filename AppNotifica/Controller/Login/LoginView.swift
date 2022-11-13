//
//  LoginView.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class LoginView:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGraoundColor
        setupVisualElements()
        
    }
    
    //cria a função com as propriedade da Imagem do login
    var imageLogin = ImageDefault(image:"ImageLogin")
    
    //cria a função com as propriedade do label do login
    var labelLogin = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF", font:UIFont.systemFont(ofSize: 27, weight: .regular))
    
    //cria a função com as propriedade do text do login
    var emailTextField = TextFieldDefault(text: "E-mail")
    var SenhaTextField = TextFieldDefault(text: "Senha")
       
    //cria a função com as propriedade do botão do login
    var button = ButtonDefault(text: "LOGAR")
    var buttonTwo =  ButtonDefault(text: "REGISTRAR")
       
    
    func setupVisualElements(){
        
        self.addSubview(imageLogin)
        self.addSubview(labelLogin)
        self.addSubview(emailTextField)
        self.addSubview(SenhaTextField)
        self.addSubview(button)
        self.addSubview(buttonTwo)
        
        NSLayoutConstraint.activate([
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 238),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -57),
            
            
            labelLogin.widthAnchor.constraint(equalToConstant: 100),
            labelLogin.topAnchor.constraint(equalTo: imageLogin.topAnchor, constant: 80),
            labelLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            labelLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            
            emailTextField.widthAnchor.constraint(equalToConstant: 100),
            emailTextField.topAnchor.constraint(equalTo: labelLogin.topAnchor, constant: 80),
            emailTextField.heightAnchor.constraint(equalToConstant: 44),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            SenhaTextField.widthAnchor.constraint(equalToConstant: 100),
            SenhaTextField.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 50),
            SenhaTextField.heightAnchor.constraint(equalToConstant: 44),
            SenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            SenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            button.widthAnchor.constraint(equalToConstant: 358),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            button.topAnchor.constraint(equalTo: SenhaTextField.topAnchor, constant: 60),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            buttonTwo.widthAnchor.constraint(equalToConstant: 358),
            buttonTwo.heightAnchor.constraint(equalToConstant: 50),
            buttonTwo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTwo.topAnchor.constraint(equalTo: button.topAnchor, constant: 60),
            buttonTwo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            
            
            
            
            
        ])
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

