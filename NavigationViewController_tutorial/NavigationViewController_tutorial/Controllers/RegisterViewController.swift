//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 양현 on 2021/05/31.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func onLoginViewControllerBtn(_ sender: UIButton) {
        print("RegisterViewController - onLoginViewControllerBtn() called/ 로그인 버튼 클릭!!!")
        //네비게이션 뷰 컨드롤러를 팝한다.
        self.navigationController?.popViewController(animated: true)
    }
    
}
