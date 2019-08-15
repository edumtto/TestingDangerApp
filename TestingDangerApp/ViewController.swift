//
//  AppDelegate.swift
//  TestingDangerApp
//
//  Created by PicPay Eduardo on 7/23/19.
//  Copyright © 2019 PicPay Eduardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Olá mundo!"
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        addComponents()
        layoutComponents()
    }
    
    func addComponents() {
        view.addSubview(label)
    }
    
    func layoutComponents() {
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
