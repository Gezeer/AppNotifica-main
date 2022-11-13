//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class LabelDefault : UILabel{
    init(text: String, font:UIFont) {
        super.init(frame: .zero)
        initDefault(text: text,font: font)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text:String,font: UIFont){
        self.textColor = .labelBackGraoundColor
        self.font = font
        self.text = text
        self.adjustsFontSizeToFitWidth = true
        self.numberOfLines = 0
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
