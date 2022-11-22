//
//  SobreView.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit
class SobreView: ViewDefault{
    
    
    var sobreImage = ImageDefault(image:"ImageSobre")
    var textSobre = LabelDefault(text:"Aplicativo desenvolvido pelos professores do curso Desenvolvimento de aplicativos utilizando a linguagem Swift do IFB com intuito de permitir que ocorrências sejam registradas e acompanhadas, bem como solucionadas.", font:UIFont.systemFont(ofSize: 17, weight: .regular))
    var textNegrito = LabelDefault(text: "Desevolvedores:", font: UIFont.systemFont(ofSize: 17, weight: .black))
    
    var textLista = LabelDefault(text: "Caio Moura Daoud\nDiógenes Ferreira Reis Fustinoni\nFábio Ferraz Fernandez\nHeitor José dos Santos Barros\nJosé Dario Pintor da Silva\nTiago Henrique Faccio Segato", font: UIFont.systemFont(ofSize: 17, weight: .regular))
    
    
    override func setupVisualElements(){
        super.setupVisualElements()
        self.addSubview(sobreImage)
        self.addSubview(textSobre)
        self.addSubview(textNegrito)
        self.addSubview(textLista)
        
        NSLayoutConstraint.activate([
            sobreImage.widthAnchor.constraint(equalToConstant: 274.99),
            sobreImage.heightAnchor.constraint(equalToConstant: 82.64),
            sobreImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            sobreImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            sobreImage.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -57),
            
            textSobre.widthAnchor.constraint(equalToConstant: 274.99),
            textSobre.heightAnchor.constraint(equalToConstant: 82.64),
            textSobre.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            textSobre.topAnchor.constraint(equalTo: sobreImage.topAnchor, constant: 100),
            textSobre.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -50),
            
            textNegrito.widthAnchor.constraint(equalToConstant: 132),
            textNegrito.heightAnchor.constraint(equalToConstant: 82.64),
            textNegrito.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            textNegrito.topAnchor.constraint(equalTo: textSobre.topAnchor, constant: 150),
            textNegrito.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -50),
            
            textLista.widthAnchor.constraint(equalToConstant: 132),
            textLista.heightAnchor.constraint(equalToConstant: 82.64),
            textLista.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            textLista.topAnchor.constraint(equalTo: textNegrito.topAnchor, constant: 100),
            textLista.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -50)
            
        ])
    }
}
