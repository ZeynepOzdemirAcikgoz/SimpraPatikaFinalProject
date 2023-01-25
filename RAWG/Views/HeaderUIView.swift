//
//  HeaderUIView.swift
//  RAWG
//
//  Created by Zeynep Özdemir Açıkgöz on 23.01.2023.
//

import UIKit

class HeaderUIView: UIView {
    
    
    private var headerTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "New and Trending"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .heavy)
        label.textAlignment = .center
        
        return label
        
    }()
    
    private let orderByButton: UIButton = {
        let button = UIButton()
        button.setTitle("orderBy:", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
       //button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    private let platformButton: UIButton = {
        let button = UIButton()
        button.setTitle("platform:", for: .normal)
      button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
       //button.backgroundColor = .white
         button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerTitleLabel)
        addSubview(orderByButton)
        addSubview(platformButton)
        applyConstraints()
    }
    
    private func applyConstraints(){
        
        let headerTitleLabelConstraints = [
            headerTitleLabel.topAnchor.constraint(equalTo:topAnchor, constant: 0),
            headerTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            headerTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
           // headerTitleLabel.bottomAnchor.constraint(equalTo: orderByButton.topAnchor, constant: 5),
            headerTitleLabel.widthAnchor.constraint(equalToConstant: 100),
            headerTitleLabel.heightAnchor.constraint(equalToConstant: 50)
            
        ]
        let orderByButtonConstraints = [
            orderByButton.topAnchor.constraint(equalTo: headerTitleLabel.bottomAnchor, constant: 20),
            orderByButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
           // orderByButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 20),
              orderByButton.widthAnchor.constraint(equalToConstant: 150),
            orderByButton.heightAnchor.constraint(equalToConstant: 30)
            
        ]
        
        let platformButtonConstraints = [
            platformButton.topAnchor.constraint(equalTo: headerTitleLabel.bottomAnchor, constant: 20),
            platformButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
           // platformButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 20),
            platformButton.widthAnchor.constraint(equalToConstant: 150),
            platformButton.heightAnchor.constraint(equalToConstant: 30)
            
        ]
        
        
        NSLayoutConstraint.activate(headerTitleLabelConstraints)
        NSLayoutConstraint.activate(orderByButtonConstraints)
        NSLayoutConstraint.activate(platformButtonConstraints)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
       // headerTitleLabel.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
