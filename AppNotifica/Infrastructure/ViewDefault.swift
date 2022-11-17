//
//  ViewDefault.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 16 on 17/11/22.
//

import Foundation
import UIKit

class ViewDefault:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGraoundColor
        setupVisualElements()
        
    }
    func setupVisualElements(){
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
