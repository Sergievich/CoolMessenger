//
//  OneLineTF.swift
//  CoolMessenger
//
//  Created by Artiom on 21.10.21.
//

import Foundation
import UIKit

class OneLineTF: UITextField{
    convenience init(font: UIFont? = .avenir20()) {
        self.init()
        self.font = font
        self.borderStyle = .none
        self.translatesAutoresizingMaskIntoConstraints = false
        
        
        let bottonView = UIView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        bottonView.backgroundColor = .darkGray
        self.addSubview(bottonView)
        bottonView.translatesAutoresizingMaskIntoConstraints = false 
        
        NSLayoutConstraint.activate([
            bottonView.bottomAnchor.constraint(equalTo:  self.bottomAnchor),
            bottonView.leadingAnchor.constraint(equalTo:  self.leadingAnchor),
            bottonView.trailingAnchor.constraint(equalTo:  self.trailingAnchor),
            bottonView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
