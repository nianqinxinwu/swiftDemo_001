//
//  ViewController.swift
//  SwiftDemo_001
//
//  Created by 常远 on 2021/7/19.
//

import UIKit

class ViewController: UIViewController {

    lazy var titleLabel : QMUILabel = {
        let label = QMUILabel()
        label.textColor = .darkText
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

