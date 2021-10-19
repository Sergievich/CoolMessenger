//
//  ViewController.swift
//  CoolMessenger
//
//  Created by Artiom on 18.10.21.
//

import UIKit
import SwiftUI

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .green
    }


}


struct VCProwider: PreviewProvider {
    static var prewies: some View{
        
    }
    
    struct ContainerView:
        
        let controller = LoginVC()
                                
        UIViewControllerRepresentable{
            func makeUIViewController(){}
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            <#code#>
        }
    }
}
