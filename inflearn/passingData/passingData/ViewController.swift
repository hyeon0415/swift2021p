//
//  ViewController.swift
//  passingData
//
//  Created by 양현 on 2021/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func moveToDetail(_ sender: Any) {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailVC.someString = "aaa 스트링"
       
        self.present(detailVC, animated: true, completion: nil)

        //        detailVC.someLabel.text = "bb" -- 잘 쓰지 않음 
        
    }
    
}

