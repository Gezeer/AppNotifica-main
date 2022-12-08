//
//  NovaOcorrenciaView.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault{
    
    //MARK: - Closures
    var onCameraTap:(() -> Void)?
    
    //MARK: - Proports
    lazy var imagem:UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named: "ImageNovaOcorrencia")
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector( cameraTap))
        view.addGestureRecognizer(tapGR)
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    var tituloTextField = TextFieldDefault(placeholder:"Titulo", keyBoardType: .default, returnKeyType: .next)
    
    var descricaoTextField = TextFieldDefault(placeholder:"Descrição", keyBoardType: .default, returnKeyType: .next)
    
    var localizacaoTextField = TextFieldDefault(placeholder:"Localização", keyBoardType: .default, returnKeyType: .next)
    
    var dataTextField = TextFieldDefault(placeholder:"Data", keyBoardType: .default, returnKeyType: .next)
    
    var statusTextField = TextFieldDefault(placeholder:"Status", keyBoardType: .default, returnKeyType: .done)
    
    
    var button = ButtonDefault(text: "SALVAR")
    
    override func setupVisualElements(){
       super.setupVisualElements()
        self.addSubview(imagem)
        self.addSubview(tituloTextField)
        self.addSubview(descricaoTextField)
        self.addSubview(localizacaoTextField)
        self.addSubview(dataTextField)
        self.addSubview(statusTextField)
        self.addSubview(button)
        
        
        
        
        
        NSLayoutConstraint.activate([
            
            
            imagem.heightAnchor.constraint(equalToConstant: 200),
            imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 20),
            imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 15),
            imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -15),
            
                                    tituloTextField.widthAnchor.constraint(equalToConstant: 100),
                                     tituloTextField.topAnchor.constraint(equalTo: imagem.topAnchor, constant: 250),
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
    
    @objc
    
    private func cameraTap(){
        self.onCameraTap?()
    }
    
    func setImage(image:UIImage){
        imagem.image = image
    }
}
