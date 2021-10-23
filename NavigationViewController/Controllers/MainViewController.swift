//
//  MainViewController.swift
//  NavigationViewController
//
//  Created by 김지은 on 2021/10/22.
//

import UIKit

class MainViewController: UIViewController {
    
    // 제목
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = UIColor.white
        
        return label
    }()
    
    var changBtn: UIButton = {
        let button = UIButton()
        button.setTitle("배경색 바꾸기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        button.addTarget(self, action: #selector(changeBG), for: .touchUpInside)
        
        return button
    }()
    
    var isBgPupple: Bool?
    
    // 뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isBgPupple = true
        
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(changBtn)
        changBtn.translatesAutoresizingMaskIntoConstraints = false
        changBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        changBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc fileprivate func changeBG() {
        if isBgPupple == true {
            view.backgroundColor = #colorLiteral(red: 1, green: 0.6967394352, blue: 0.3561267257, alpha: 1)
            isBgPupple = false
        }
        else {
            view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            isBgPupple = true
        }
        
        print("MainViewController - changeBG() called / isBgPupple: \(isBgPupple!)")
    }
}
