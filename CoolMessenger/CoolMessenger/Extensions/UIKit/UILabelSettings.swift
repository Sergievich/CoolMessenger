//
//  UILabelSetting.swift
//  CoolMessenger
//
//  Created by Artiom on 20.10.21.
//

import Foundation
import UIKit

extension UILabel{
     
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
