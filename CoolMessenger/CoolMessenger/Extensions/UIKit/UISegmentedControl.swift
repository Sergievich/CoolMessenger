//
//  UISegmentedControl.swift
//  CoolMessenger
//
//  Created by Artiom on 27.10.21.
//

import UIKit

extension UISegmentedControl{
    
    convenience init(first: String, second: String, third: String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.insertSegment(withTitle: third, at: 2, animated: true)
        self.selectedSegmentIndex = 1
    }
    
}

