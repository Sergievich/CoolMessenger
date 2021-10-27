//
//  SetupProfileVC.swift
//  CoolMessenger
//
//  Created by Artiom on 26.10.21.
//

import Foundation
import UIKit

class SetupProfileVC: UIViewController{
    
    let fillImageView = AddPhotoView()
    
    let welcomeLbl = UILabel(text: "Set up Profile", font: .avenir26())
    
    let fullNamelLbl = UILabel(text: "Full name", font:  .avenir20())
    let fullNameTF = OneLineTF(font: .avenir20())
    
    let searchingLbl = UILabel(text: "What you search?")
    let searchingdTF = OneLineTF(font: .avenir20())
    
    let sexLbl = UILabel(text: "Sex", font: .avenir20())
    let sexSegmented = UISegmentedControl(first: "Male", second: "Doesn't matter", third: "Female")
    
    let goToChatsBtn = UIButton(backgoundColor: .black, titleColot: .white, title: "Go to chats!", isShadow: true, font: .avenir20(), cornerRadius: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        setupConstraints()
    }
    
    
    //MARK: Steup constraints 
    private func setupConstraints(){
        
        let fullNameStackView = UIStackView(arrangedSubviews: [fullNamelLbl, fullNameTF])
        fullNameStackView.axis = .vertical
        fullNameStackView.spacing = 0
        
        let searchingStackView = UIStackView(arrangedSubviews: [searchingLbl, searchingdTF])
        searchingStackView.axis = .vertical
        searchingStackView.spacing = 0
        
        let sexStackView = UIStackView(arrangedSubviews: [sexLbl, sexSegmented])
        sexStackView.axis = .vertical
        sexStackView.spacing = 0
        
        let stackView = UIStackView(arrangedSubviews: [fullNameStackView, searchingStackView, sexStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        fillImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(fillImageView)
        NSLayoutConstraint.activate([
            welcomeLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            welcomeLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            fillImageView.topAnchor.constraint(equalTo: welcomeLbl.topAnchor, constant: 40),
            fillImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
//            stackView.topAnchor.constraint(equalTo: fillImageView.bottomAnchor, constant: 40),
//            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
//            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
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
