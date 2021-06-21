//
//  DetailViewController.swift
//  passingData
//
//  Created by 양현 on 2021/06/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    var someString = ""
//IBO는 화면이 나올 준비가 돼고 그 다음 나온다. 
    @IBOutlet weak var someLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        someLabel.text = someString
    }


}
