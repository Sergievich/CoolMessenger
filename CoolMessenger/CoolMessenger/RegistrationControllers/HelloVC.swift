//
//  ViewController.swift
//  CoolMessenger
//
//  Created by Artiom on 18.10.21.
//

import UIKit
import SwiftUI

class HelloVC: UIViewController {
    
    let signUpVC = SignUpVC()
    let loginVC = LoginVC()
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    
    let logoImage = UIImageView(image: #imageLiteral(resourceName: "Google_logo_png"), contentMode: .scaleAspectFit)
    
    let googleLbl = UILabel(text: "Get started with")
    let emailLbl = UILabel(text: "Get started with")
    let alreduOnBoardLbl = UILabel(text: "Get started with")
    
    let googleBtn = UIButton(backgoundColor: .white, titleColot: .black, title: "", isShadow: true)
    
    let emailBtn = UIButton(backgoundColor: .blue, titleColot: .white, title: "Email", isShadow: false)
    
    let loginBtn = UIButton(backgoundColor: .white, titleColot: .black, title: "Login", isShadow: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        logoImage.frame = CGRect(x: 0, y: 0, width: 50, height: screenSize.height * 0.2)
        setupConstraints()
        view.backgroundColor = .systemCyan
        googleBtn.customGoogleBtn()
        emailBtn.addTarget(self, action: #selector(emailBtnTapped), for: .touchUpInside)
        loginBtn.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
      
    }
    @objc func emailBtnTapped(){
        present(signUpVC, animated: true, completion: nil)
    }
    
    @objc func loginBtnTapped(){
        present(loginVC, animated: true, completion: nil)
    }
    
    @objc func googleBtnTapped(){
        
    }

    
    private func setupConstraints(){
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        
        let googleView = ViewBtnCtack(label: googleLbl, button: googleBtn)
        let emailView = ViewBtnCtack(label: emailLbl, button: emailBtn)
        let loginView = ViewBtnCtack(label: alreduOnBoardLbl, button: loginBtn)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 40
        view.addSubview(logoImage)
        view.addSubview(stackView)
        
        
        logoImage.topAnchor.constraint(equalTo:  view.topAnchor, constant: 160 ).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       
        
        NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)])
        
        
    
    }

}


struct ViewControllerProvider: PreviewProvider{
    static var previews: some View{
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable{
        let viewCintroller = HelloVC()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> HelloVC {
            return viewCintroller
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}
