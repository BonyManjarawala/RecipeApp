//
//  ViewController.swift
//  RecipeApp
//
//  Created by DCS on 13/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myLabel1:UILabel = {
        let label = UILabel()
        label.text = "Welcome To Krishna Cake Shope"
        label.highlightedTextColor = .white
        label.font = .systemFont(ofSize:25)
        label.textColor = .green
        label.textAlignment = .center
        return label
    }()
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "cake")
        imageView.backgroundColor = .clear
        return imageView
    }()
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("We Feed Heros..", for: .normal)
        //        button.backgroundColor = .white
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        button.addTarget(self, action: #selector(MoveTologin), for: .touchUpInside)
        button.layer.cornerRadius = 6
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myImageView)
        view.addSubview(myButton)
        view.addSubview(myLabel1)
        self.title = "MY RECIPE APP"
       // self.view.backgroundColor = UIColor(patternImage: UIImage(named:"cake1")!)
    }
    @objc func MoveTologin(){
        let vc = loginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        myImageView.frame = CGRect(x: 40, y: view.height/2-280, width: view.width-80, height: 400)
        myLabel1.frame = CGRect(x: 10, y: view.height/2+280, width: view.width+10, height: 60)
        myButton.frame = CGRect(x: 40, y: view.height/2+200, width: view.width-80, height: 60)
    }

}

