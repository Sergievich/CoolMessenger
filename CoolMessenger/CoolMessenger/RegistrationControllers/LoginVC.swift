//
//  LoginVC.swift
//  CoolMessenger
//
//  Created by Artiom on 26.10.21.
//

import Foundation
import UIKit

class LoginVC: UIViewController{
    
    let welcomLbl = UILabel(text: "Welcom Back", font: .avenir26())
    
    let loginLbl = UILabel(text: "Login with", font: .avenir20())
    let googlenBtn = UIButton(backgoundColor: .white, titleColot: .black, title: "Google", isShadow: true, font: .avenir20(), cornerRadius: 4)
    
    let orLbl = UILabel(text: "or", font: .avenir20())
    
    let emailLbl = UILabel(text: "Email", font: .avenir20())
    let emailTF = OneLineTF(font: .avenir20())
    
    let passwordLbl = UILabel(text: "Password", font: .avenir20())
    let passwordTF = OneLineTF(font: .avenir20())
    
    let loginBtn = UIButton(backgoundColor: .blue, titleColot: .white, title: "Login", isShadow: true, font: .avenir20(), cornerRadius: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
      
}


//MARK: SwiftUI
import SwiftUI

struct LoginVCProvider: PreviewProvider{
  static var previews: some View{
      ContainerView().edgesIgnoringSafeArea(.all)
  }
  
  struct ContainerView: UIViewControllerRepresentable{
    
      
      let loginVC  = LoginVC()
      
      func makeUIViewController(context: UIViewControllerRepresentableContext<LoginVCProvider.ContainerView>) -> LoginVC {
          return loginVC
      }
      
      func updateUIViewController(_ uiViewController: LoginVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<LoginVCProvider.ContainerView>) {
          
      }
  }
}
