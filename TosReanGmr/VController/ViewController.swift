//
//  ViewController.swift
//  TosReanGmr
//
//  Created by Iengpho on 9/21/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let titleLbl = UILabel(frame: CGRect.zero)
//
//        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        
//        let widthConstraint = NSLayoutConstraint(item: titleLbl, attribute: .width, relatedBy: .equal,
//                                                toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250)
//
//        let heightConstraint = NSLayoutConstraint(item: titleLbl, attribute: .height, relatedBy: .equal,
//                                                  toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
//
//
//        let xConstraint = NSLayoutConstraint(item: titleLbl, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
//
//        let yConstraint = NSLayoutConstraint(item: titleLbl, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
//
//
       // NSLayoutConstraint.activate([widthConstraint, heightConstraint])
        
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
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    
}
