//
//  CityCell.swift
//  RecipeApp
//
//  Created by DCS on 13/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
import UIKit

class CityCell: UITableViewCell {
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 4
        imageView.alpha = 0
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    public let myButton:UIButton = {
        let button = UIButton()
        //button.setImage(UIImage(contentsOfFile), for: .normal)
        button.tintColor = .black
        button.alpha = 0
        return button
    }()
    
    func setupCityCellWith(title name:String, index:Int, and state:Bool) {
        
        myImageView.image = UIImage(named: name)
        myLabel.text = name
        myButton.tag = index
        
        setupUI(at: index, with: state)
    }
    
    private func setupUI(at index:Int, with state:Bool) {
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        contentView.addSubview(myButton)
        
        myImageView.frame = CGRect(x: 20, y: 10, width: 80, height: 100)
        
        myLabel.frame = CGRect(x: myImageView.right + 20, y: 10, width: 140, height: 80)
        myImageView.alpha = 1
        myButton.alpha = 1
       
        
        myButton.frame = CGRect(x: contentView.width - 80, y: 10, width: 40, height: 80)
    }
    
    
}
