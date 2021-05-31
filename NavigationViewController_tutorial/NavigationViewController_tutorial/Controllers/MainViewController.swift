//
//  MainViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 양현 on 2021/05/31.
//

import UIKit

class MainViewController: UIViewController {
    
    //제목
    var titleLabel: UILabel = {
       let label = UILabel()
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        return label
    }()
    
    
    // 뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
}
