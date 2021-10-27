//
//  AddPhotoView .swift
//  CoolMessenger
//
//  Created by Artiom on 27.10.21.
//

import Foundation
import UIKit

class AddPhotoView: UIView {
    
    var circleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "userAvatar")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1
        return imageView
    }()
    
    let plusBtn: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let myImage  = #imageLiteral(resourceName: "addBtn")
        button.setImage(myImage, for: .normal)
        button.tintColor = .black
        return button
    }()
    
    override init(frame: CGRect){
    super.init(frame: frame)
        
        addSubview(circleImageView)
        addSubview(plusBtn)
        
        setupConstraints()
    }
    //MARK: Setup images constraints
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            //MARK: circleImageView constraints
            circleImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            circleImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            circleImageView.widthAnchor.constraint(equalToConstant: 100),
            circleImageView.heightAnchor.constraint(equalToConstant: 100),
            
            //MARK: plusBtn constraints
            plusBtn.leadingAnchor.constraint(equalTo: circleImageView.trailingAnchor, constant: 16),
            plusBtn.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            plusBtn.widthAnchor.constraint(equalToConstant: 30),
            plusBtn.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        self.bottomAnchor.constraint(equalTo:  circleImageView.bottomAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: plusBtn.trailingAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        circleImageView.layer.masksToBounds = true
        circleImageView.layer.cornerRadius = circleImageView.frame.width / 2
    }
}
