//
//  RegisterViewController.swift
//  NavigationViewController
//
//  Created by 김지은 on 2021/10/19.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func onClickedbackBtn(_ sender: Any) {
        print("RegisterViewController - onClickedbackBtn() called / 로그인 화면으로 이동하는 버튼 클릭!")
        
        // 네비게이션 뷰 컨트롤러를 팝(제거)한다.
        self.navigationController?.popViewController(animated: true)
    }
}
