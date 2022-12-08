//
//  ButtonDefault.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class ButtonDefault:UIButton{
    init(text:String) {
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text:String){
        self.backgroundColor = .buttonBackGraoundColor
        self.setTitle(text, for: .normal)
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
