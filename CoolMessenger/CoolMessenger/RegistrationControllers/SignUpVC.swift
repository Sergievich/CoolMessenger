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
        loginBtn.titleLabel?.font = .avenir20() 
        setupConstraints()
        passwordTF.isSecureTextEntry = true
        confirmPassTF.isSecureTextEntry = true
        signUpBtn.addTarget(self, action: #selector(signUpBtnTapped), for: .touchUpInside)
        
    }
    
    @objc func signUpBtnTapped(){
        
    }
    
}

   //MARK: Setup constraints
extension SignUpVC {
private func setupConstraints(){
    
    let emailStackView = UIStackView(arrangedSubviews: [emailLbl, emailTF])
    emailStackView.axis  = .vertical
    emailStackView.spacing = 0
    
    let passwordStackView = UIStackView(arrangedSubviews: [passwordLbl, passwordTF])
    passwordStackView.axis  = .vertical
    passwordStackView.spacing = 0
    
    let confPassStackView = UIStackView(arrangedSubviews: [confirmPassLbl, confirmPassTF])
    confPassStackView.axis  = .vertical
    confPassStackView.spacing = 0
    
    signUpBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true

    let stackView = UIStackView(arrangedSubviews: [emailStackView, passwordStackView, confPassStackView, signUpBtn])
    stackView.axis = .vertical
    stackView.spacing = 40
    
    let bottomStackView = UIStackView(arrangedSubviews: [alredyOnBoardLbl, loginBtn])
    bottomStackView.axis = .horizontal
    bottomStackView.spacing = -1
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    bottomStackView.translatesAutoresizingMaskIntoConstraints = false
    welcomLbl.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(welcomLbl)
    view.addSubview(stackView)
    view.addSubview(bottomStackView)
    
    NSLayoutConstraint.activate([
        welcomLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
        welcomLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        //MARK: StackView Constraints
        stackView.topAnchor.constraint(equalTo: welcomLbl.bottomAnchor, constant: 160),
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
        
        //MARK: BottomView Constraints
        bottomStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
        bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
        bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        
    
    ])
   
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

