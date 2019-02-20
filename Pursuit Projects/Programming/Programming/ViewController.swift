//
//  ViewController.swift
//  Programming
//
//  Created by Alfredo Barragan on 1/23/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var myButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Change Color", for: .normal)
        button.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        return button
        
    } ()
    
    
     
   @objc func changeColor () {
        self.view.backgroundColor = .magenta
    }
    
    lazy var myTextView: UITextView = {
        let textView = UITextView()
        textView.text = "work damnit"
        textView.textColor = .white
        textView.backgroundColor = .black
        return textView
    } ()
    // 1. Create and set your object
    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "first label!"
        label.textColor = .white
        label.backgroundColor = .black
        label.numberOfLines = 0
        return label
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // 2. Add object to main view
        view.addSubview(myLabel)
        view.addSubview(myTextView)
        view.addSubview(myButton)
        setConstraints()
    }

    func setConstraints() {
        // 3a. Create constraints YOU MUST DO THIS FOR EVERY SINGLE OBJECT!!!!
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -11).isActive = true
        myTextView.translatesAutoresizingMaskIntoConstraints = false
        myTextView.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 11).isActive = true
        myTextView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
        myTextView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -11).isActive = true
        myTextView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -11).isActive = true 
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
    }

}

