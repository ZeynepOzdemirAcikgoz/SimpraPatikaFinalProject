//
//  ItemTableViewCell.swift
//  RAWG
//
//  Created by Zeynep Özdemir Açıkgöz on 23.01.2023.
//

import UIKit
import SDWebImage

class ItemTableViewCell: UITableViewCell {
    
    static let identifier = "ItemTableViewCell"
    
    private var games : [GameResponse] = [GameResponse]()
    
    //itemImageView
    private let itemImageView : UIImageView = {
        
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.image = UIImage(named: "data")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
     //icons
    private let icon1Image : UIImageView = {
    var icon1 = UIImageView()
    icon1.contentMode = .scaleAspectFill
    icon1.clipsToBounds = true
        icon1.backgroundColor = .white
    icon1.layer.cornerRadius = 10
    icon1.image = UIImage(named: "pc")
    icon1.translatesAutoresizingMaskIntoConstraints = false
        return icon1
    }()
    
    
    private let icon2Image : UIImageView = {
    
    var icon2 = UIImageView()
    icon2.contentMode = .scaleAspectFill
    icon2.clipsToBounds = true
        icon2.backgroundColor = .white
    icon2.layer.cornerRadius = 10
    icon2.image = UIImage(named: "ps5")
    icon2.translatesAutoresizingMaskIntoConstraints = false
        return icon2
    }()
    
    private let icon3Image : UIImageView = {
    var icon3 = UIImageView()
    icon3.contentMode = .scaleAspectFill
    icon3.clipsToBounds = true
        icon3.backgroundColor = .white
    icon3.layer.cornerRadius = 10
    icon3.image = UIImage(named: "xbox")
    icon3.translatesAutoresizingMaskIntoConstraints = false
    return icon3
}()
    //stackViewIcons
    
    private let stackViewIcons = UIStackView()
    
    func configstackViewIcons(){
        
        stackViewIcons.axis = NSLayoutConstraint.Axis.horizontal
        stackViewIcons.distribution = .fillEqually
        //stackViewIcons.alignment = .leading
        stackViewIcons.spacing = 10.0
      
        
        stackViewIcons.addArrangedSubview(icon1Image)
        stackViewIcons.addArrangedSubview(icon2Image)
        stackViewIcons.addArrangedSubview(icon3Image)
        
        self.addSubview(stackViewIcons)
        
        stackViewIcons.translatesAutoresizingMaskIntoConstraints = false
        stackViewIcons.topAnchor.constraint(equalTo: itemImageView.bottomAnchor, constant: 10).isActive = true
        stackViewIcons.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        //stackViewIcons.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        //stackViewH.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackViewIcons.heightAnchor.constraint(equalToConstant: 25).isActive = true
        stackViewIcons.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
       
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
    
    //logoButtons
    private let logo1Button: UIButton = {
        let button = UIButton()
       // button.setTitle("View more:", for: .normal)
        button.setImage(UIImage(systemName: "plus"),for: .normal )
        button.tintColor = .lightGray
      
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    private let logo2Button: UIButton = {
        let button = UIButton()
       // button.setTitle("View more:", for: .normal)
        button.setImage(UIImage(systemName: "gift"),for: .normal )
        button.tintColor = .lightGray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    private let logo3Button: UIButton = {
        let button = UIButton()
       // button.setTitle("View more:", for: .normal)
        button.setImage(UIImage(systemName: "heart.fill"),for: .normal )
        button.tintColor = .lightGray
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    
    //stackViewButtons

    private let stackViewButtons = UIStackView()

    func configstackViewButtons(){

        stackViewButtons.axis = NSLayoutConstraint.Axis.horizontal
        stackViewButtons.distribution = .fillEqually
        //stackViewButtons.alignment = .center
        stackViewButtons.spacing = 10.0
        

        stackViewButtons.addArrangedSubview(logo1Button)
        stackViewButtons.addArrangedSubview(logo2Button)
        stackViewButtons.addArrangedSubview(logo3Button)


        self.addSubview(stackViewButtons)

        stackViewButtons.translatesAutoresizingMaskIntoConstraints = false
        stackViewButtons.topAnchor.constraint(equalTo: itemTitlelabel.bottomAnchor, constant: 10).isActive = true
        stackViewButtons.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        //stackViewButtons.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        //stackViewButtons.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackViewButtons.heightAnchor.constraint(equalToConstant: 25).isActive = true
        stackViewButtons.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    
    //viewMoreButton
    
    
    private let viewMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("View more:", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
       
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    //View More Kısmı
    private let stackViewV = UIStackView()
    private let stackViewH = UIStackView()

    
    let label = UILabel()
   
    
    
    let imageView1 = UIImageView()
    
    func createLabel(){
       // label.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        label.text = "0"
       
        label.textColor = UIColor.black
        label.textAlignment = .left
        
       addSubview(label)

    }
    func createimageView(){
   
        
    imageView1.translatesAutoresizingMaskIntoConstraints = false
      
 //imageView1.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageView1.widthAnchor.constraint(equalToConstant: 150).isActive = true
    //imageView1.centerYAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    

    func configstackViewVertical(){
        
        stackViewV.axis = NSLayoutConstraint.Axis.vertical
        stackViewV.distribution = .fillEqually
//        stackViewV.alignment = .center
        stackViewV.spacing = 10.0
        
        self.addSubview(stackViewV)

        stackViewV.translatesAutoresizingMaskIntoConstraints = false
        stackViewV.topAnchor.constraint(equalTo: viewMoreButton.bottomAnchor, constant: 10).isActive = true
        stackViewV.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        stackViewV.trailingAnchor.constraint(equalTo: trailingAnchor, constant:-10).isActive = true
        //stackViewH.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackViewV.heightAnchor.constraint(equalToConstant: 150).isActive = true
       stackViewV.widthAnchor.constraint(equalToConstant: 150).isActive = true

        let views = configureParentViews()
        views.forEach { view in
            stackViewV.addArrangedSubview(view)
        }
    }

    // View Less Kısmı
    private let viewLessButton: UIButton = {
        let button = UIButton()
        button.setTitle("View Less:", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    private let showMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show more detail:", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
       
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    
  
        let label1 = UILabel()
        let label2 = UILabel()
        let label3 = UILabel()
        let label4 = UILabel()
        let label5 = UILabel()
        let label6 = UILabel()
        
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //contentView.backgroundColor = .systemPink
        addSubview(label1)
        addSubview(label2)
        addSubview(label3)
        addSubview(label4)
        addSubview(label5)
        addSubview(label6)
       
        
        addSubview(itemImageView)
        addSubview(icon1Image)
        addSubview(icon2Image)
        addSubview(icon3Image)
        addSubview(logo1Button)
        addSubview(logo1Button)
        addSubview(logo1Button)
        addSubview(itemTitlelabel)
        addSubview(viewMoreButton)
        addSubview(viewLessButton)
        addSubview(showMoreButton)
       
        configureParentViews()
        configstackViewIcons()
        configstackViewButtons()
        configstackViewVertical()
    
        
        applyConstraints()
        
    }
    
    
    func configureParentViews() -> [UIView] {
//        let label1 = UILabel()
//        let label2 = UILabel()
//        let label3 = UILabel()
//        let label4 = UILabel()
//        let label5 = UILabel()
//        let label6 = UILabel()
        //label1.text = "Release Date"
        
        label1.textAlignment = .left
        label1.attributedText = NSAttributedString(string: "Release Date: ", attributes:
            [.underlineStyle: NSUnderlineStyle.single.rawValue])
        
        
        
        label2.text = "23 Dec, 2023"
        label2.textAlignment = .right
        
        let view1 = UIView()
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        view1.addSubview(label1)
        NSLayoutConstraint.activate([
            label1.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            label1.topAnchor.constraint(equalTo: view1.topAnchor, constant: 0),
            label1.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -10),
        ])
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        view1.addSubview(label2)
        NSLayoutConstraint.activate([
            label2.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            label2.topAnchor.constraint(equalTo: view1.topAnchor, constant: 0),
            label2.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -10),
            label2.leadingAnchor.constraint(equalTo: label1.trailingAnchor),
            label2.widthAnchor.constraint(equalTo: label1.widthAnchor)
        ])
        
        
        let label3 = UILabel()
        label3.textAlignment = .left
        label3.attributedText = NSAttributedString(string: "Genres: ", attributes:
            [.underlineStyle: NSUnderlineStyle.single.rawValue])
        
        let label4 = UILabel()
        label4.textAlignment = .right
        label4.text = "Action"
        
        let view2 = UIView()
        
        label3.translatesAutoresizingMaskIntoConstraints = false
        view2.addSubview(label3)
        NSLayoutConstraint.activate([
            label3.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: 10),
            label3.topAnchor.constraint(equalTo: view2.topAnchor, constant: 0),
            label3.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10),
        ])
        
        label4.translatesAutoresizingMaskIntoConstraints = false
        view2.addSubview(label4)
        NSLayoutConstraint.activate([
            label4.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: -10),
            label4.topAnchor.constraint(equalTo: view2.topAnchor, constant: 0),
            label4.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10),
            label4.leadingAnchor.constraint(equalTo: label3.trailingAnchor),
            label4.widthAnchor.constraint(equalTo: label3.widthAnchor)
        ])
        
        let label5 = UILabel()
        label5.textAlignment = .left
        label5.attributedText = NSAttributedString(string: "Ratings Count: ", attributes:
            [.underlineStyle: NSUnderlineStyle.single.rawValue])

        let label6 = UILabel()
        label6.textAlignment = .right
        label6.text = "4.7"

        let view3 = UIView()

        label5.translatesAutoresizingMaskIntoConstraints = false
        view3.addSubview(label5)
        NSLayoutConstraint.activate([
            label5.leadingAnchor.constraint(equalTo: view3.leadingAnchor, constant: 10),
            label5.topAnchor.constraint(equalTo: view3.topAnchor, constant: 0),
            label5.bottomAnchor.constraint(equalTo: view3.bottomAnchor, constant: -10),
        ])

        label6.translatesAutoresizingMaskIntoConstraints = false
        view3.addSubview(label6)
        NSLayoutConstraint.activate([
            label6.trailingAnchor.constraint(equalTo: view3.trailingAnchor, constant: -10),
            label6.topAnchor.constraint(equalTo: view3.topAnchor, constant: 0),
            label6.bottomAnchor.constraint(equalTo: view3.bottomAnchor, constant: -10),
            label6.leadingAnchor.constraint(equalTo: label5.trailingAnchor),
            label6.widthAnchor.constraint(equalTo: label5.widthAnchor)
        ])

        return [view1, view2, view3]
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
            viewMoreButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            viewMoreButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            // viewMoreButton.widthAnchor.constraint(equalToConstant: widthAnchor),
            viewMoreButton.heightAnchor.constraint(equalToConstant: 25)
        ]
        let viewLessButtonConstraints = [
            viewLessButton.topAnchor.constraint(equalTo:stackViewV.bottomAnchor, constant: 10),
            viewLessButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            viewLessButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            // viewLessButton.widthAnchor.constraint(equalToConstant: widthAnchor),
            viewLessButton.heightAnchor.constraint(equalToConstant: 25)
        ]
        let showMoreButtonConstraints = [
            showMoreButton.topAnchor.constraint(equalTo:viewLessButton.bottomAnchor, constant: 10),
            showMoreButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            showMoreButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            // showMoreButton.widthAnchor.constraint(equalToConstant: widthAnchor),
            showMoreButton.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        
//        NSLayoutConstraint.activate([
//            icon1Image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            icon1Image.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            icon1Image.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
//        ])
//        NSLayoutConstraint.activate([
//            icon2Image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
//            icon2Image.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            icon2Image.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
//            icon2Image.leadingAnchor.constraint(equalTo: icon1Image.trailingAnchor),
//            icon2Image.widthAnchor.constraint(equalTo: icon1Image.widthAnchor)
//        ])
//        NSLayoutConstraint.activate([
//            icon3Image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            icon3Image.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            icon3Image.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
//            icon3Image.leadingAnchor.constraint(equalTo: icon2Image.trailingAnchor),
//            icon3Image.widthAnchor.constraint(equalTo: icon2Image.widthAnchor)
//        ])
        
        NSLayoutConstraint.activate(itemImageViewConstraints)
        NSLayoutConstraint.activate(itemTitlelabelConstraints)
        NSLayoutConstraint.activate(viewMoreButtonConstraints)
        NSLayoutConstraint.activate(viewLessButtonConstraints)
        NSLayoutConstraint.activate(showMoreButtonConstraints)
    }
    
    
    required init?(coder:NSCoder) {
        fatalError()
    }
    
    
    
    
    //CONFIGURE
    
    
    
    public func configure(with viewModel : ItemTableCellModel){

        itemTitlelabel.text  = viewModel.name
       
        //image
        guard let url = URL(string: "\(viewModel.backgroundImage)") else {
            return
            
        }

        itemImageView.sd_setImage(with: url, completed: nil)
        //labals
       
        label2.text  = viewModel.released
        label6.text = "\(viewModel.rating)"//String(viewModel.rating ?? 0)
        
        //??
     //   label3.text = viewModel.genres
    
        }
        
        
      
        
    }
    
    

