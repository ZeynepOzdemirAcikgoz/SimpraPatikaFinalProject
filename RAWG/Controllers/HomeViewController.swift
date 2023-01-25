//
//  HomeViewController.swift
//  RAWG
//
//  Created by Zeynep Özdemir Açıkgöz on 23.01.2023.
//

import UIKit


class HomeViewController: UIViewController {
    
    private var games : [GameResponse] = [GameResponse]()
    // search bar
    lazy   var searchBar: UISearchBar = {
        searchBar.frame =  CGRectMake(100, 40, 440, 40)
        searchBar.placeholder = "Search for Places"
                var centerNavBarButton = UIBarButtonItem(customView:searchBar)
        return searchBar
    }()
   
    private let homeFeedTable : UITableView = {
        //tablo görünümünde olduğumuzu belirtiyoruz. tablo çerçevesi içerisinde
        let table = UITableView(frame: .zero, style: .grouped)
        
        table.register(ItemTableViewCell.self, forCellReuseIdentifier: ItemTableViewCell.identifier)
//        table.register(UINib(nibName: TableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
      
        return table
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(homeFeedTable)
        
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        let headerView = HeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 150))
        homeFeedTable.tableHeaderView = headerView
        //headerView.backgroundColor = .white
        
        fetchgetGames()
        configureNavbar()
       
    }
    override func viewDidLayoutSubviews() {
        homeFeedTable.frame = view.bounds
    }
    private func fetchgetGames(){
        APICaller.shared.getAllGames { _ in
            //
        }
    }
    
    
    private func configureNavbar(){
        
        let navController = navigationController!
        var image = UIImage(named: "rawg logo")
        image = image?.withRenderingMode(.alwaysOriginal)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        
        let oiButton = UIButton(type: .system)
        oiButton.setImage(UIImage(named: "rawg logo")?.withRenderingMode(.alwaysOriginal), for: .normal)
       // oiButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        oiButton.translatesAutoresizingMaskIntoConstraints = false
        
        let bannerHeight = navController.navigationBar.frame.size.height
        let bannerWidth = bannerHeight + 35
        
       
        oiButton.widthAnchor.constraint(equalToConstant: bannerWidth).isActive = true
        oiButton.heightAnchor.constraint(equalToConstant: bannerHeight).isActive = true
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: oiButton)
        
       
        navigationItem.rightBarButtonItems = [
            
            //UIBarButtonItem(searchBar: UISearchBar(search target: self, action: nil),
           
            
            UIBarButtonItem(image: UIImage(systemName: "play.magnifyingglass"), style: .done, target: self, action: nil),

            UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal"), style: .done, target: self, action: nil)
        ]
        
        navigationController?.navigationBar.tintColor = .white
    }
    
}

    
//    public func configures(with games: [GameResponse]){
//
//        self.games = games
//    }
    


extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ItemTableViewCell.identifier, for: indexPath) as? ItemTableViewCell else{
            let ItemTableViewCell = ItemTableViewCell(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 150))
            return UITableViewCell()
        }
        
        
        
           return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return 320
        return 580
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
    
    
}
