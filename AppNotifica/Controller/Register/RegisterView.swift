//
//  RegisterView.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class RegisterView: ViewDefault{
    
   //MARK: - INITIALIZE
    
    var onLoginTap:(() -> Void)?
    
    
    
    
    
    //MARK: - PROPERTIES
    //cria a variavel com as propriedade do label do login
    var labelLogin = LabelDefault(text: "Entre com seu e-mail e senha para se registrar.", font: UIFont.systemFont(ofSize: 20, weight: .regular))
    
    //cria a variavel com as propriedade do text do login
    var emailTextField = TextFieldDefault(placeholder:"E-mail", keyBoardType: .emailAddress, returnKeyType: .next)
    //cria a funçao
    var SenhaTextField: TextFieldDefault = {
       let text  = TextFieldDefault(placeholder:"Senha", keyBoardType: .emailAddress, returnKeyType: .next)
        text.isSecureTextEntry = true
        return text
    }()
    
    //cria funçao
    var confirmarSenhaTextField: TextFieldDefault = {
        let TextConfirmaSenha = TextFieldDefault(placeholder:"Confirmar senha", keyBoardType: .emailAddress, returnKeyType: .done)
        TextConfirmaSenha.isSecureTextEntry = true
        
        return TextConfirmaSenha
        
    }()
       
    //cria a função com as propriedade do botão do login
    var buttonTwo = ButtonDefault(text: "REGISTRAR")
    var button = ButtonDefault(text: "LOGAR")
    
       
    
        override func setupVisualElements(){
        
        super.setupVisualElements()
        self.addSubview(labelLogin)
        self.addSubview(emailTextField)
        self.addSubview(SenhaTextField)
        self.addSubview(confirmarSenhaTextField)
        self.addSubview(buttonTwo)
        self.addSubview(button)
        
        
        button.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            labelLogin.widthAnchor.constraint(equalToConstant: 100),
            labelLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 188),
            labelLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            labelLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            
            emailTextField.widthAnchor.constraint(equalToConstant: 100),
            emailTextField.topAnchor.constraint(equalTo: labelLogin.topAnchor, constant: 100),
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
            buttonTwo.topAnchor.constraint(equalTo: confirmarSenhaTextField.topAnchor, constant: 80),
            buttonTwo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            button.widthAnchor.constraint(equalToConstant: 358),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            button.topAnchor.constraint(equalTo: buttonTwo.topAnchor, constant: 60),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            
            
            
            
            
        ])
    }
    //MARK: - Actions
    
    @objc
    private func loginTap(){
        onLoginTap?()
    }
}

