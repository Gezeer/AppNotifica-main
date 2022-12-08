//
//  UIColor+.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 11/11/22.
//

import Foundation
import UIKit

extension UIColor{
    static var viewBackGraoundColor: UIColor {
        UIColor (named: "viewBackGroundColor") ?? .white
    }
   
        static var textFieldBackGraoundColor: UIColor {
            UIColor (named: "textFieldBackGraoundColor") ?? .lightGray
        }
    
    static var labelBackGraoundColor: UIColor {
        UIColor (named: "labelBackGraoundColor") ?? .black
    }
    
    static var buttonBackGraoundColor: UIColor {
        UIColor (named: "buttonBackGraoundColor") ?? .black
    }
    static var placeHolderColor: UIColor {
        UIColor (named: "placeHolderColor") ?? .white
    }

}
