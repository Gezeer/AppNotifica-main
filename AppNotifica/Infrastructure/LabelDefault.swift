//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

class LabelDefault : UILabel{
    init(text: String) {
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text:String){
        self.textColor = .labelBackGraoundColor
        self.font = UIFont(name: "SFProText-Regular", size: 20)
        self.text = text
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
