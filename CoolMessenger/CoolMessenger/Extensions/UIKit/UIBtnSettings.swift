//
//  UIBtnSettings.swift
//  CoolMessenger
//
//  Created by Artiom on 20.10.21.
//

import Foundation
import UIKit

extension UIButton {
    
    convenience init(backgoundColor: UIColor,
                     titleColot: UIColor,
                     title: String,
                     isShadow: Bool,
                     font:  UIFont? = .avenir20(),
                     cornerRadius: CGFloat = 4) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColot, for: .normal)
        self.backgroundColor = backgoundColor
        self.layer.cornerRadius = cornerRadius
        self.titleLabel?.font = font
        
        if isShadow {
            self.layer.shadowColor = UIColor.blue.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.5
            self.layer.shadowOffset = CGSize(width:  0, height: 4)
            
        }
    }
    
}
