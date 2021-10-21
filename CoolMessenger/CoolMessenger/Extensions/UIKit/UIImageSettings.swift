//
//  UIImageSettings.swift
//  CoolMessenger
//
//  Created by Artiom on 20.10.21.
//

import Foundation
import UIKit

extension UIImageView{
    
    convenience init(image: UIImage, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
    
}
