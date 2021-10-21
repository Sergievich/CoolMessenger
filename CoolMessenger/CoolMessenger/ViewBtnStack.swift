//
//  ViewBtnStack.swift
//  CoolMessenger
//
//  Created by Artiom on 20.10.21.
//

import Foundation
import UIKit

class ViewBtnCtack: UIView{
    init (label: UILabel, button: UIButton){
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(label)
        self.addSubview(button)
        
        label.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
        button.topAnchor.constraint(equalTo: label.bottomAnchor , constant: 20).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        bottomAnchor.constraint(equalTo: button.bottomAnchor).isActive = true 
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
