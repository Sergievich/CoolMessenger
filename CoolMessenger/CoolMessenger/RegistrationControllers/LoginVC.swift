//
//  LoginVC.swift
//  CoolMessenger
//
//  Created by Artiom on 26.10.21.
//

import Foundation
import UIKit

class LoginVC: UIViewController{
    
    let welcomLbl = UILabel(text: "Welcome Back!", font: .avenir26())
    
    let loginLbl = UILabel(text: "Login with", font: .avenir20())
    let googlenBtn = UIButton(backgoundColor: .white, titleColot: .black, title: "", isShadow: true, font: .avenir20(), cornerRadius: 4)
    
    let orLbl = UILabel(text: "or", font: .avenir20())
    
    let emailLbl = UILabel(text: "Email", font: .avenir20())
    let emailTF = OneLineTF(font: .avenir20())
    
    let passwordLbl = UILabel(text: "Password", font: .avenir20())
    let passwordTF = OneLineTF(font: .avenir20())
    
    let loginBtn = UIButton(backgoundColor: .black, titleColot: .white, title: "Login", isShadow: true, font: .avenir20(), cornerRadius: 4)
    
    let registerLbl = UILabel(text: "Need an account?", font: .avenir20())
    let registerBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        registerBtn.titleLabel?.font = .avenir20()
        registerBtn.setTitle("Register", for: .normal)
        registerBtn.setTitleColor(.red, for: .normal)
        googlenBtn.customGoogleBtn()
        passwordTF.isSecureTextEntry = true
        
        setupConstraints()
    }
   
    //MARK: Setup constraints
    private func setupConstraints(){
        
        let loginStackView = UIStackView(arrangedSubviews: [loginLbl, googlenBtn])
        loginStackView.axis = .vertical
        loginStackView.spacing = 10
        
        let emailStackView = UIStackView(arrangedSubviews: [emailLbl, emailTF])
        emailStackView.axis = .vertical
        emailStackView.spacing = 0
        
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLbl, passwordTF])
        passwordStackView.axis = .vertical
        passwordStackView.spacing = 0
        
        let stackView = UIStackView(arrangedSubviews: [loginStackView, orLbl, emailStackView, passwordStackView, loginBtn])
        stackView.axis = .vertical
        stackView.spacing = 40
        
        let bottomStackView = UIStackView(arrangedSubviews: [registerLbl, registerBtn])
        bottomStackView.axis = .horizontal
        bottomStackView.spacing = -1
        
        loginBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
        googlenBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        welcomLbl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(loginBtn)
        view.addSubview(welcomLbl)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            welcomLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            welcomLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stackView.topAnchor.constraint(equalTo: welcomLbl.bottomAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            loginBtn.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40),
            loginBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            loginBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            
            bottomStackView.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 60),
            bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        
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
