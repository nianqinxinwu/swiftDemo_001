//
//  ViewController.swift
//  SwiftDemo_001
//
//  Created by 常远 on 2021/7/19.
//

import UIKit
import JWT

class ViewController: UIViewController,UITextViewDelegate {
    var produceString = ""
    
    lazy var titleLabel : QMUILabel = {
        let label = QMUILabel()
        label.textColor = .darkText
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    lazy var JWTbutton : QMUIButton = {
        let button = QMUIButton()
        button.setTitle("jwt生成", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .green
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var showLabel : QMUILabel = {
        let label = QMUILabel()
        label.textAlignment = .left
        label.textColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.backgroundColor = .lightGray
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.black.cgColor
        label.numberOfLines = 0
        return label
    }()
    
   lazy var textView: UITextView = {
        let txtView = UITextView()
        txtView.textAlignment = .left
        txtView.textColor = .black
        txtView.font = .systemFont(ofSize: 14)
        txtView.layer.cornerRadius = 5
        txtView.layer.masksToBounds = true
        txtView.layer.borderWidth = 1
        txtView.layer.borderColor = UIColor.black.cgColor
        return txtView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view).offset(40)
            make.centerX.equalTo(self.view)
        }
        titleLabel.text = "测试"
        
        self.view.addSubview(JWTbutton)
        JWTbutton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(50)
            make.right.equalTo(self.view).offset(-16)
            make.size.equalTo(CGSize(width: 80, height: 30))
        }
        JWTbutton .addTarget(self, action: #selector(produceClick), for: .touchUpInside)
        
        self.view.addSubview(showLabel)
        showLabel.snp.makeConstraints { make in
            make.top.equalTo(JWTbutton)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(JWTbutton.snp.left).offset(-15)
            make.height.equalTo(50)
        }
        
        textView.delegate = self
        self.view.addSubview(textView)
        textView.snp.makeConstraints { make in
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.bottom.equalTo(self.view).offset(-44)
            make.height.equalTo(50)
        }
    }
    
    /// 点击生成Jwt
    @objc func produceClick() {
        let payload : [String:String] = ["name" : "ducreyna",
        "admin": "1",
        "exp": "1425391188545"]
        
        let ecoded  = JWT.encodePayload(payload)
        
    }
    
    
    /// delegate
    func textViewDidChange(_ textView: UITextView) {
        produceString = textView.text
    }
}

