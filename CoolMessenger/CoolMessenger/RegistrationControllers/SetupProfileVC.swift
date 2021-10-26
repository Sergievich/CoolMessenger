//
//  SetupProfileVC.swift
//  CoolMessenger
//
//  Created by Artiom on 26.10.21.
//

import Foundation
import UIKit

class SetupProfileVC: UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        
    }
}



//MARK: SwiftUI
import SwiftUI

struct SetupProfileVCProvider: PreviewProvider{
  static var previews: some View{
      ContainerView().edgesIgnoringSafeArea(.all)
  }
  
  struct ContainerView: UIViewControllerRepresentable{
    
      
      let setupProfileVC  = SetupProfileVC()
      
      func makeUIViewController(context: UIViewControllerRepresentableContext<SetupProfileVCProvider.ContainerView>) -> SetupProfileVC {
          return setupProfileVC
      }
      
      func updateUIViewController(_ uiViewController: SetupProfileVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SetupProfileVCProvider.ContainerView>) {
          
      }
  }
}
