//
//  HomeViewController.swift
//  RAWG
//
//  Created by Zeynep Özdemir Açıkgöz on 23.01.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
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
        
       
    }
    override func viewDidLayoutSubviews() {
        homeFeedTable.frame = view.bounds
    }

    

}
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
        return 450
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
    
    
}
