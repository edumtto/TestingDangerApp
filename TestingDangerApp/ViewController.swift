//
//  ViewController.swift
//  TestingDangerApp
//
//  Created by PicPay Eduardo on 7/23/19.
//  Copyright © 2019 PicPay Eduardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "bla bla bla"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        // Do any additional setup after loading the view.
    }


}

