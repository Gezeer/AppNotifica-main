//
//  EscolherImagem.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 06/12/22.
//

import Foundation
import UIKit

class EscolherImagem: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    // instancia o controle do sistem de imagens
    var selecionador = UIImagePickerController()
    
    //Cria um Alerta
    var alerta = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    
    //cria um UIViewController
    var viewController:UIViewController?
    
    //cria um callback @escaping
    var retornoSelecionador:((UIImage) -> ())?
    
    //função Principal
    func selecionadorImagem(_ viewController: UIViewController, _ retorno: @escaping((UIImage)->())){
        
    /* Declara o callback dessa funçao como a variavel externa pickImageCallback,
     isso serve para o retorno dessa funçao estar em outro metodo, no caso, apos a escolha da imagem */
        retornoSelecionador = retorno
    
    
    //Declara o viewController como o passado como parametro, isso serve para as transições da tela.
    self.viewController = viewController
    
    //Cria uma ação que chama o metodo "openCamera"
    let camera = UIAlertAction(title: "Camera", style: .default){
        UIAlertAction in
        self.abrirCamera()
    }
    // Cria uma ação que chama o metodo "abrirGaleria"
    let galeria = UIAlertAction(title: "Galeria", style: .default){
        UIAlertAction in
        self.abrirGaleria()
    }
    // cria uma outra ação
    let concelar = UIAlertAction(title: "Cancelar", style: .default){
        UIAlertAction in
    }
    //Declara que o novo delegate do piker são os metodos abaixo
    selecionador.delegate = self
    
    //Adiciona ações ao alerta
    
    alerta.addAction(camera)
    alerta.addAction(galeria)
    alerta.addAction(concelar)
    
    //Exibe o alerta na tela
    alerta.popoverPresentationController?.sourceView = self.viewController?.view
    viewController.present(alerta, animated: true, completion: nil)
    
    
    
}

// Abre a Camera
func abrirCamera(){
//desfaz o alerta de seleçao gerado anteriormente
    alerta.dismiss(animated: true, completion: nil)
    
    //Aqui verificamos se temos a  permissão para acessar a camera
    if(UIImagePickerController.isSourceTypeAvailable(.camera)){
        //Define o tipo que queremos selecionar como a camera
        selecionador.sourceType = .camera
        //vai para a tela da camera
        self.viewController?.present(selecionador, animated: true, completion: nil)
        
    }else{
        //gera alerta se a pessoa nao possue camera no dispositivo ou caso voce rode em um simulador.
        let alerta  = UIAlertController(title: "Alerta", message: "Você não tem câmera", preferredStyle: .actionSheet)
        
        //cria uma outra ação
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel){
            UIAlertAction in
        }
        // mostra alerta
        
        alerta.addAction(cancelar)
        self.viewController?.present(alerta, animated: true, completion: nil)
        
    }
}

func abrirGaleria(){
    //Desfaz o alerta gerado
    alerta.dismiss(animated: true, completion: nil)
    
    //por default o tipo de abertura do selecionador em cena é a Galeria
    selecionador.sourceType = .photoLibrary
    
    //vai para a tela da Galeria
    self.viewController?.present(selecionador, animated: true, completion:nil)
}
//metodo chamado quando a pessoa escolhe uma imagem

func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]){
    
    //Desfaz a tela da Galeria que foi gerada
    picker.dismiss(animated: true, completion: nil)
    
    //verifica o arquivo aberto realmente é uma imagem
    guard let image = info[.originalImage] as? UIImage else{
    fatalError("Esperava-se uma imgem, mas foi dado o seguinte: \(info)")
    
}
    //retorna o callback da função principal
    retornoSelecionador?(image)
}

}
