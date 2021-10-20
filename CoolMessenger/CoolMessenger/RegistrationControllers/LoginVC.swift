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


struct ViewControllerProvider: PreviewProvider{
    static var previews: some View{
        ContainerView()
    }
    
    struct ContainerView: UIViewControllerRepresentable{
        let viewCintroller = LoginVC()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> LoginVC {
            return viewCintroller
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}
