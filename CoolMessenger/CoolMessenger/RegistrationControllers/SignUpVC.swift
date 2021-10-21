//
//  SignUpVC.swift
//  CoolMessenger
//
//  Created by Artiom on 21.10.21.
//

import Foundation
import UIKit

class SignUpVC: UIViewController {
    
    let welcomLbl = UILabel(text: "Hello there", font: .avenir26())
    
    let emailLbl = UILabel(text: "Email")
    let emailTF = OneLineTF(font: .avenir20())
    
    let passwordLbl = UILabel(text: "Password")
    let passwordTF = OneLineTF(font: .avenir20())
    
    let confirmPassLbl = UILabel(text: "Confirm password" )
    let confirmPassTF = OneLineTF(font: .avenir20())
    
    let alredyOnBoardLbl = UILabel(text: "Alredy onboard?")


    let signUpBtn = UIButton(backgoundColor: .darkText, titleColot: .white, title: "SignUp", isShadow: true)
    let loginBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.red, for: .normal) 
        view.backgroundColor = .systemCyan
        setupConstraints()
    }
    
}
   //MARK: Setup constraints
extension SignUpVC {
private func setupConstraints(){
    
    let emailStackView = UIStackView(arrangedSubviews: [emailLbl, emailTF])
    emailStackView.axis  = .vertical
    emailStackView.spacing = 40
}

}

  //MARK: SwiftUI
import SwiftUI

struct SignUpProvider: PreviewProvider{
    static var previews: some View{
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable{
      
        
        let signUpVC  = SignUpVC()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SignUpProvider.ContainerView>) -> SignUpVC {
            return signUpVC
        }
        
        func updateUIViewController(_ uiViewController: SignUpProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SignUpProvider .ContainerView>) {
            
        }
    }
}

