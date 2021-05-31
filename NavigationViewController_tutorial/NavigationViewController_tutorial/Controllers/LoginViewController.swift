//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 양현 on 2021/05/31.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginBtn: UIButton!
    
   //뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //상단 네비게이션 바 부분을 숨김처리한다.
       
        self.navigationController?.isNavigationBarHidden = true
        
        loginBtn.addTarget(self, action: #selector(moveToMainViewController), for: .touchUpInside)
        
    }
    //메인화면으로 이동
    @objc fileprivate func moveToMainViewController(){
        print("LoginViewController - moveToMainViewController() called")
    }


}

