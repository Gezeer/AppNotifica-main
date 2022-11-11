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
    var imageLogin: UIImageView = {
        let imagem = UIImageView()
        imagem.image = UIImage(named:"ImageLogin")
        imagem.contentMode = .scaleAspectFit
        imagem.translatesAutoresizingMaskIntoConstraints = false
        return imagem
    }()
    
    //cria a função com as propriedade do label do login
    var labelLogin: UILabel = {
        let label = UILabel()
        label.textColor = .labelBackGraoundColor
        label.font = UIFont(name: "SFProDisplay-Light", size: 16)
        label.text = "Registre e gerencie as ocorrências do seu IF"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var emailTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .textFieldBackGraoundColor
        textField.placeholder = "E-mail"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var SenhaTextField: UITextField = {
        let senhaText = UITextField()
        senhaText.backgroundColor = .textFieldBackGraoundColor
        senhaText.placeholder = "Senha"
        senhaText.translatesAutoresizingMaskIntoConstraints = false
        return senhaText
    }()
    
    var button: UIButton = {
        let buttonField = UIButton()
        buttonField.backgroundColor = .buttonBackGraoundColor
        buttonField.setTitle("LOGAR", for: .normal)
        buttonField.layer.cornerRadius = 14
        buttonField.translatesAutoresizingMaskIntoConstraints = false
        return buttonField
    }()
    var buttonTwo: UIButton = {
        let buttonTwoField = UIButton()
        buttonTwoField.backgroundColor = .buttonBackGraoundColor
        buttonTwoField.setTitle("REGISTRAR", for: .normal)
        buttonTwoField.layer.cornerRadius = 14
        buttonTwoField.translatesAutoresizingMaskIntoConstraints = false
        return buttonTwoField
    }()
    
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

