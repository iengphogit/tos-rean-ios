//
//  SplashScreenController.swift
//  TosReanGmr
//
//  Created by Iengpho on 9/21/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class SplashScreenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let width = self.view.frame.size.width
        let y = self.view.frame.size.height / 2
        let height = 70
        let title = UILabel(frame: CGRect(x: Int( 0 ), y: Int(y - 35), width: Int(width), height: height))
        title.text = "តោះរៀន"
        title.font = UIFont(name: "Bayon", size: 40.0)
        title.textAlignment = .center
        title.textColor = UIColor.white
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.showHomeScreen))
        title.isUserInteractionEnabled = true
        title.addGestureRecognizer(gestureRecognizer)
        
        self.view.addSubview(title)
        
        /*
         
         let button = UIButton(frame: CGRect(x: Int((width / 2 ) - 100), y: Int(y + 70), width: Int(200), height: Int(50)))
         button.setTitle("Button", for: .normal)
         button.layer.cornerRadius = 5
         self.view.addSubview(button)
         
         */
        let subTitleY = Int(y) + Int(20)
        let subTitle = UILabel(frame: CGRect(x: 0, y: subTitleY, width: Int(width), height: Int(height)))
        subTitle.text = "វេយ្យាករណ៍អង់គ្លេស"
        subTitle.font = UIFont.init(name: "Bayon", size: 22.0)
        subTitle.textColor = UIColor.yellow
        subTitle.textAlignment = .center
        self.view.addSubview(subTitle)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            AppDelegate.shared.rootViewController.switchToHomeScreen()
        }
    }
    
    @objc func showHomeScreen(_ sender: UIGestureRecognizer) {
        print("showHomeScreen")
        //AppDelegate.shared.rootViewController.showHomeScreen()
        AppDelegate.shared.rootViewController.switchToHomeScreen()
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    

}



