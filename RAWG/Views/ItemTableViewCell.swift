//
//  ItemTableViewCell.swift
//  RAWG
//
//  Created by Zeynep Özdemir Açıkgöz on 23.01.2023.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    static let identifier = "ItemTableViewCell"
    // let ItemTableViewCell = ItemTableViewCell()
    
    //itemImageView
    private let itemImageView : UIImageView = {
        
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "data")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    
    //stackViewIcons
    
    private let stackViewIcons = UIStackView()
    
    func configstackViewIcons(){
        
        stackViewIcons.axis = NSLayoutConstraint.Axis.vertical
        stackViewIcons.distribution = .fillEqually
        stackViewIcons.alignment = .center
        stackViewIcons.spacing = 10.0
        stackViewIcons.backgroundColor = .cyan
        
        //stackViewIcons.addArrangedSubview(stackViewH)
        
        
        self.addSubview(stackViewIcons)
        
        stackViewIcons.translatesAutoresizingMaskIntoConstraints = false
        stackViewIcons.topAnchor.constraint(equalTo: itemImageView.bottomAnchor, constant: 10).isActive = true
        stackViewIcons.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        stackViewIcons.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        //stackViewH.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackViewIcons.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    
    //itemTitlelabel
    private var itemTitlelabel : UILabel = {
        let label = UILabel()
        label.text = "GTA Vice City"
        label.font = .systemFont(ofSize: 25, weight: .heavy)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    
    //stackViewButtons

    private let stackViewButtons = UIStackView()

    func configstackViewButtons(){

        stackViewButtons.axis = NSLayoutConstraint.Axis.vertical
        stackViewButtons.distribution = .fillEqually
        stackViewButtons.alignment = .center
        stackViewButtons.spacing = 10.0
        stackViewButtons.backgroundColor = .cyan

       // stackViewButtons.addArrangedSubview(stackViewH)


        self.addSubview(stackViewButtons)

        stackViewButtons.translatesAutoresizingMaskIntoConstraints = false
        stackViewButtons.topAnchor.constraint(equalTo: itemTitlelabel.bottomAnchor, constant: 10).isActive = true
        stackViewButtons.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        stackViewButtons.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        //stackViewButtons.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackViewButtons.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    
    //viewMoreButton
    
    
    private let viewMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("View more:", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.backgroundColor = .systemYellow
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    //View More Kısmı
    private let stackViewV = UIStackView()
    private let stackViewH = UIStackView()

    
    func configstackViewH(){
        
        stackViewH.axis = NSLayoutConstraint.Axis.horizontal
        stackViewH.distribution = .fillEqually
        stackViewH.alignment = .center
        stackViewH.spacing = 10.0
        stackViewH.backgroundColor = .systemYellow
        
//        stackViewH.addArrangedSubview(imageView1)
//        stackViewH.addArrangedSubview(imageView2)
//        stackViewH.addArrangedSubview(imageView3)
        
        addSubview(stackViewH)
        
        stackViewH.translatesAutoresizingMaskIntoConstraints = false
        
        stackViewH.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        stackViewH.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
       // stackViewH.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackViewH.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stackViewH.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    
    
    func configstackViewVertical(){

        stackViewV.axis = NSLayoutConstraint.Axis.vertical
        stackViewV.distribution = .fillEqually
        stackViewV.alignment = .center
        stackViewV.spacing = 10.0
        stackViewV.backgroundColor = .cyan

        stackViewV.addArrangedSubview(stackViewH)


        self.addSubview(stackViewV)

        stackViewV.translatesAutoresizingMaskIntoConstraints = false
        stackViewV.topAnchor.constraint(equalTo: viewMoreButton.bottomAnchor, constant: 10).isActive = true
        stackViewV.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        stackViewV.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10).isActive = true
        //stackViewH.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackViewV.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }

    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
        
        addSubview(itemImageView)
        addSubview(itemTitlelabel)
        addSubview(viewMoreButton)
        configstackViewIcons()
        configstackViewButtons()
        configstackViewVertical()
        
        
        applyConstraints()
        
    }
    
    
    private func applyConstraints(){
        
        let itemImageViewConstraints = [
            itemImageView.topAnchor.constraint(equalTo:topAnchor, constant: 10),
            itemImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            itemImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            // itemImageView.widthAnchor.constraint(equalToConstant: widthAnchor),
            itemImageView.heightAnchor.constraint(equalToConstant: 150)
        ]
        
        let itemTitlelabelConstraints = [
            itemTitlelabel.topAnchor.constraint(equalTo:stackViewIcons.bottomAnchor, constant: 10),
            itemTitlelabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            itemTitlelabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            // itemTitlelabel.widthAnchor.constraint(equalToConstant: widthAnchor),
            itemTitlelabel.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        let viewMoreButtonConstraints = [
            viewMoreButton.topAnchor.constraint(equalTo:stackViewButtons.bottomAnchor, constant: 10),
            viewMoreButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            viewMoreButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            // viewMoreButton.widthAnchor.constraint(equalToConstant: widthAnchor),
            viewMoreButton.heightAnchor.constraint(equalToConstant: 25)
        ]
        
        NSLayoutConstraint.activate(itemImageViewConstraints)
        NSLayoutConstraint.activate(itemTitlelabelConstraints)
        NSLayoutConstraint.activate(viewMoreButtonConstraints)
    }
    
    
    required init?(coder:NSCoder) {
        fatalError()
    }
    
}
