//
//  ViewController.swift
//  NavigationViewController
//
//  Created by 김지은 on 2021/10/19.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    
    // View가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("LoginViewController - viewDidLoad() called / 로그인 화면 호출")
        
        // 상단 네비게이션 바 부분을 숨김처리한다.
        self.navigationController?.isNavigationBarHidden = true
        
        loginBtn.addTarget(self, action: #selector(onClickedLoginBtn), for: .touchUpInside)
    }
    
    // 메인화면으로 이동
    @objc fileprivate func onClickedLoginBtn() {
        print("LoginViewController - onClickedLoginBtn() called")
        
        let mainViewController = MainViewController()
        self.navigationController?.pushViewController(mainViewController, animated: true)
        
    }
}

