//
//  loginVC.swift
//  RecipeApp
//
//  Created by DCS on 13/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
import UIKit

class loginVC: UIViewController {
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.highlightedTextColor = .white
        label.font = .systemFont(ofSize:50)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    private let myTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Login-id"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        return textField
    }()
    private let myTextField1:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        return textField
    }()
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Login now", for: .normal)
        //        button.backgroundColor = .white
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        button.addTarget(self, action: #selector(MoveToTableView), for: .touchUpInside)
        button.layer.cornerRadius = 6
        return button
    }()
    private let myButton1:UIButton = {
        let button = UIButton()
        button.setTitle("Menu", for: .normal)
        //        button.backgroundColor = .white
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        button.addTarget(self, action: #selector(MoveToTableView), for: .touchUpInside)
        button.layer.cornerRadius = 6
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTextField)
        view.addSubview(myTextField1)
        view.addSubview(myLabel)
        view.addSubview(myButton)
        view.addSubview(myButton1)
        self.title = "Login Page"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"image2")!)
        
        // Do any additional setup after loading the view.
    }
    @objc func MoveToTableView(){
        let vc = TableView()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //let toolBarHeight:CGFloat = view.safeAreaInsets.top + 40
        myLabel.frame = CGRect(x: 40, y: view.height/2-330, width: view.width-80, height: 60)
        myTextField.frame = CGRect(x: 40, y: view.height/2-250, width: view.width-80, height: 60)
        myTextField1.frame = CGRect(x: 40, y: view.height/2-150, width: view.width-80, height: 60)
        myButton.frame = CGRect(x: 40, y: view.height/2-50, width: view.width-80, height: 60)
        myButton1.frame = CGRect(x: 40, y: view.height/2+200, width: view.width-80, height: 60)
    }
    
}
