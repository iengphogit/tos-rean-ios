//
//  HomeViewController.swift
//  TosReanGmr
//
//  Created by Iengpho on 9/25/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rootViewController = AppDelegate.shared.rootViewController
        rootViewController.view.backgroundColor = .white
        
        let titleLbl = UILabel()
        self.view.addSubview(titleLbl)
        
        titleLbl.text = "Hello"
        titleLbl.textColor = UIColor.white
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive =  true
        titleLbl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive =  true
        
        let a = UILabel()
        self.view.addSubview(a)
        a.text = "A label"
        a.translatesAutoresizingMaskIntoConstraints = false
        a.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 10).isActive = true
        a.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
        //*** Title ***//
        
        let mainTitle = UILabel()
        view.addSubview(mainTitle)
        mainTitle.text = "Main Title"
        mainTitle.textColor = UIColor.white
        mainTitle.textAlignment = .center
        
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        mainTitle.widthAnchor.constraint(equalToConstant: 150).isActive = true
        mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        mainTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainTitle.layer.borderWidth = 1.0
        mainTitle.layer.borderColor = UIColor.white.cgColor
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
