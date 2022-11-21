//
//  TabBarViewController.swift
//  AppNotifica
//
//  Created by Geiziane alexandre on 20/11/22.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController{
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool){
        super.setViewControllers(viewControllers, animated: animated)
        self.tabBar.tintColor = .buttonBackGraoundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackGraoundColor
    }
        
    
}


