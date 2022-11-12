//
//  RegisterView.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class RegisterView:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGraoundColor
        setupVisualElements()
        
    }
    //cria a função com as propriedade do label do login
    var labelLogin = LabelDefault(text: "Entre com seu e-mail e senha para se registrar.")
    
    //cria a função com as propriedade do text do login
    var emailTextField = TextFieldDefault(text: "E-mail")
    var SenhaTextField = TextFieldDefault(text: "Senha")
    var confirmarSenhaTextField = TextFieldDefault(text: "Confirmar senha")
       
    //cria a função com as propriedade do botão do login
    var buttonTwo = ButtonDefault(text: "REGISTRAR")
    var button = ButtonDefault(text: "LOGAR")
    
       
    
    func setupVisualElements(){
        
    
        self.addSubview(labelLogin)
        self.addSubview(emailTextField)
        self.addSubview(SenhaTextField)
        self.addSubview(confirmarSenhaTextField)
        self.addSubview(buttonTwo)
        self.addSubview(button)
        
        NSLayoutConstraint.activate([
            
            labelLogin.widthAnchor.constraint(equalToConstant: 100),
            labelLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 188),
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
            
            confirmarSenhaTextField.widthAnchor.constraint(equalToConstant: 100),
            confirmarSenhaTextField.topAnchor.constraint(equalTo: SenhaTextField.topAnchor, constant: 50),
            confirmarSenhaTextField.heightAnchor.constraint(equalToConstant: 44),
            confirmarSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            confirmarSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            buttonTwo.widthAnchor.constraint(equalToConstant: 358),
            buttonTwo.heightAnchor.constraint(equalToConstant: 50),
            buttonTwo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTwo.topAnchor.constraint(equalTo: confirmarSenhaTextField.topAnchor, constant: 60),
            buttonTwo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            button.widthAnchor.constraint(equalToConstant: 358),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            button.topAnchor.constraint(equalTo: buttonTwo.topAnchor, constant: 60),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            
            
            
            
            
        ])
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

