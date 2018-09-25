//
//  RootViewController.swift
//  TosReanGmr
//
//  Created by Iengpho on 9/25/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    private var current: UIViewController
    
    init() {
        self.current = SplashScreenController()
        self.current.view.backgroundColor = UIColor.FlatColor.AppColor.primaryColor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewController(current)
        current.view.frame = view.bounds
        view.addSubview(current.view)
        current.didMove(toParentViewController: self)
    }
    
    func showHomeScreen() {
        let homeScreen = UINavigationController(rootViewController: HomeViewController())
        addChildViewController(homeScreen)
        homeScreen.view.frame = view.bounds
        homeScreen.didMove(toParentViewController: self)
        
        //Clear current
        current.willMove(toParentViewController: nil)
        current.view.removeFromSuperview()
        current.removeFromParentViewController()
        
        current = homeScreen
    }
    
    
    func switchToHomeScreen() {
        let homeViewController = HomeViewController()
        let homeScreen = UINavigationController(rootViewController: homeViewController)
        animateFadeTransition(to: homeScreen)
    }
    
    
    private func animateFadeTransition(to new: UIViewController, completion: (() -> Void)? = nil) {
        current.willMove(toParentViewController: nil)
        addChildViewController(new)
        
        transition(from: current, to: new, duration: 0.3, options: [.transitionCrossDissolve, .curveEaseOut], animations: {
        }) { completed in
            self.current.removeFromParentViewController()
            new.didMove(toParentViewController: self)
            self.current = new
            completion?()  //1
        }
    }
    
    private func animateDismissTransition(to new: UIViewController, completion: (() -> Void)? = nil) {
        let initialFrame = CGRect(x: -view.bounds.width, y: 0, width: view.bounds.width, height: view.bounds.height)
        current.willMove(toParentViewController: nil)
        addChildViewController(new)
        transition(from: current, to: new, duration: 0.3, options: [], animations: {
            new.view.frame = self.view.bounds
        }) { completed in
            self.current.removeFromParentViewController()
            new.didMove(toParentViewController: self)
            self.current = new
            completion?()
        }
    }

    
}

