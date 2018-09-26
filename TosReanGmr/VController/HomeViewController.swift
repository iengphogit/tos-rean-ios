//
//  HomeViewController.swift
//  TosReanGmr
//
//  Created by Iengpho on 9/25/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let lblTitle:UILabel = UILabel()
    private var tableView: UITableView = UITableView()
    
    private let cellId = "cellId"
    private var menus : [Menu] = [Menu]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.addSubview(tableView)
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuCell.self, forCellReuseIdentifier: cellId)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createMenuArray()
        self.view.backgroundColor = .white
        drawUI()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MenuCell
        cell.menu = menus[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    private func drawUI() {
        
        //Font
        let font = UIFont(name: "Montserrat", size: 22);
//        let boldFont = font!.bold()
        
        //Title
        self.view.addSubview(lblTitle)
        lblTitle.text = "Learn 16 Tenses"
        lblTitle.font = font
        lblTitle.textColor = UIColor.black
        lblTitle.textAlignment = NSTextAlignment.center
        //Constraint
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        lblTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive =  true
        
        
    }
    
    func createMenuArray() {
        for i in 0...25 {
            menus.append(Menu(title: "Menu \(i)", menuImage: #imageLiteral(resourceName :"book-stack")))
        }
    }
        
    
}

