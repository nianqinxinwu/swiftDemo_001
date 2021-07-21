//
//  BasicVC.swift
//  SwiftDemo_001
//
//  Created by 常远 on 2021/7/21.
//

import UIKit
//import QMUIKit

class BasicVC: UIViewController {
    private lazy var titleLB : QMUILabel = {
        let titleLabel = QMUILabel()
        titleLabel.textAlignment = .left
        titleLabel.font = .systemFont(ofSize: 14, weight:.medium)
        titleLabel.textColor = .darkText
        return titleLabel
    }()
    
    private lazy var contentLabel : QMUILabel = {
        let contentLabel = QMUILabel()
        contentLabel.textAlignment = .left
        contentLabel.font = .systemFont(ofSize: 12, weight: .regular)
        contentLabel.textColor = .lightText
        return contentLabel
    }()
    
}
