//
//  ViewController.swift
//  TableViewCellPractice
//
//  Created by Thiện Tùng on 1/3/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    } ()
    
    let idCell1: String = "Cell1"
    let idCell2: String = "Cell2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "CustomCellByXib", bundle: nil), forCellReuseIdentifier: idCell1)
        tableView.register(CustomCellByCode.self, forCellReuseIdentifier: idCell2)
        
        setupLayout()
    }
    
    func setupLayout(){
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: idCell1, for: indexPath) as! CustomCellByXib
            
            return cell
        } else {
            var cell = tableView.dequeueReusableCell(withIdentifier: idCell2, for: indexPath) as! CustomCellByCode
            
            if cell == nil {
                cell = CustomCellByCode(style: .subtitle, reuseIdentifier: "idCell2")
            }
            cell.imgView.image = UIImage(named: "cakho")
            cell.label1.text = "CÁ KHO"
            cell.label2.text = "Cá kho chấm nét tổng hợp tất cả các món cá kho ngon nhất Việt Nam và các món ngon làm từ cá. Món cá là một món ăn bổ dưỡng và ngon miệng được nhiều người thích"
            cell.icon.image = UIImage(named: "unheart")
            
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}
