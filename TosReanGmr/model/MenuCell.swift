//
//  MenuCell.swift
//  TosReanGmr
//
//  Created by Iengpho on 9/26/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import Foundation
import UIKit
class MenuCell: UITableViewCell {
    
    var menu : Menu? {
        didSet {
            menuImage.image = menu?.menuImage
            menuTitle.text = menu?.title
        }
    }
    
    private let menuTitle : UILabel = {
        let title = UILabel()
        title.textColor = UIColor.black
        title.font = UIFont.boldSystemFont(ofSize: 16)
        title.textAlignment = NSTextAlignment.left
        return title
    }()
    
    private let menuImage : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName:"book-stack"))
        imgView.contentMode = UIViewContentMode.scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
        }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let stackView = UIStackView()
        addSubview(stackView)
        
        stackView.axis = UILayoutConstraintAxis.horizontal
        stackView.alignment = UIStackViewAlignment.fill
        stackView.spacing = 5
        
        stackView.addSubview(menuImage)
        stackView.addSubview(menuTitle)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        menuImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 0, width: 90, height: 50, enableInset: false)
        menuTitle.anchor(top: topAnchor, left: menuImage.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 50, enableInset: false)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
