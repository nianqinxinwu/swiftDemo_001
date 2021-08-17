//
//  BasicVC.swift
//  SwiftDemo_001
//
//  Created by 常远 on 2021/7/21.
//

import UIKit
//import QMUIKit
import SDWebImage
import SnapKit

class BasicVC : UIViewController {
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
    
    private lazy var bottomLabel : QMUILabel = {
        let label = QMUILabel()
        return label
    }()
    
    private lazy var headImg : UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    override func viewDidLoad() {
        setupUI()
    }
    
    private func setupUI() {
        self.view.addSubview(headImg)
        self.view.addSubview(titleLB)
        self.view.addSubview(contentLabel)
        
        headImg.snp.makeConstraints { make in
            
        }
        
        titleLB.snp.makeConstraints { make in
            
        }
        
        contentLabel.snp.makeConstraints { make in
            
        }
        
    }
}

extension BasicVC {
    public func updateTitle(title : String, content : String, imgUrl : String)
    {
        titleLB.text = title
        headImg.sd_setImage(with: URL.init(string: imgUrl), completed: nil)
        contentLabel.text = content
    }
}
